require 'spec_helper'

describe 'apache' do

  context 'RedHat' do
    let(:facts) { { :osfamily => 'RedHat' } }
    it { should contain_package('httpd') }
  end

  context 'Ubuntu' do
    let(:facts) { { :osfamily => 'Debian' } }
    it { should contain_package('apache2') }
  end



end
