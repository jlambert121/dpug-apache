require 'spec_helper'

describe 'apache::service' do

  it { should contain_service('httpd').with(:ensure => 'running', :enable => true) }

end
