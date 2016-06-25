require 'rake'

Dir['tasks/*.rake'].each do |f|
  load File.join(File.dirname(__FILE__), f)
end

task default: :spec
