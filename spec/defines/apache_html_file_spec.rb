require 'spec_helper'

describe 'apache::html_file', :type => :define do
  let(:title) { 'myfile.html' }
  let(:params) { { :source => 'puppet:///data/somewhere/else/file.html' } }
  let(:pre_condition) { 'class { "apache": }' }

  context 'RedHat' do
    let(:facts) { { :osfamily => 'RedHat' } }

    it { should contain_file('/var/www/html/myfile.html') }
  end

  context 'Ubuntu' do
    let(:facts) { { :osfamily => 'Debian' } }

    it { should contain_file('/var/www/html/myfile.html') }
  end

  context 'append filename if needed' do
    let(:title) { 'myfile2' }
    let(:facts) { { :osfamily => 'RedHat' } }
    it { should contain_file('/var/www/html/myfile2.html') }
  end

end
