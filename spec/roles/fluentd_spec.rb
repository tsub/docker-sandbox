require 'spec_helper'

describe 'fluentd' do
  describe package 'fluentd' do
    it { should be_installed.by('gem') }
  end
end
