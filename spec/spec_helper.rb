require 'serverspec'
require 'docker'

set :backend, :docker
set :docker_image, ENV['DOCKER_IMAGE_NAME']

Dir[File.expand_path('shared/*.rb', File.dirname(__FILE__))].each do |file|
  require file
end
