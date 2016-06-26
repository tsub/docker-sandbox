require 'rspec/core/rake_task'

hosts = [
  {
    name:       'dockersandbox_app',
    short_name: 'app',
    roles:      'app',
  },
  {
    name:       'dockersandbox_fluentd',
    short_name: 'fluentd',
    roles:      'fluentd',
  }
]

class ServerspecTask < RSpec::Core::RakeTask
  attr_accessor :target

  def spec_command
    cmd = super
    "env DOCKER_IMAGE_NAME=#{target} #{cmd}"
  end
end

desc 'Run serverspec to all hosts'
task spec: hosts.map { |h| "spec:#{h[:short_name]}" }

namespace :spec do
  hosts.each do |host|
    desc "Run serverspec to #{host[:name]}"
    ServerspecTask.new(host[:short_name].to_sym) do |t|
      t.target = host[:name]
      t.pattern = "spec/roles/#{host[:roles]}_spec.rb"
    end
  end
end
