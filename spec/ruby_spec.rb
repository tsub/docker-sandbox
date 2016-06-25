require 'spec_helper'

describe command 'ruby -v' do
  let(:disable_sudo) { true }
  its(:stdout) { should match /ruby 2.3.1/ }
end
