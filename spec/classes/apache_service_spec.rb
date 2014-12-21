require 'spec_helper'

describe 'apache' do

  context 'RedHat' do
    let(:facts) { { :osfamily => 'RedHat' } }
    it { should contain_service('httpd').with(:ensure => 'running', :enable => true) }
  end

  context 'Ubuntu' do
    let(:facts) { { :osfamily => 'Debian' } }
    it { should contain_service('apache2').with(:ensure => 'running', :enable => true) }
  end

end
