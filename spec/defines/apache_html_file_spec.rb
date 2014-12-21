require 'spec_helper'

describe 'apache::html_file', :type => :define do
  let(:title) { 'myfile.html' }
  let(:params) { { :source => 'puppet:///data/somewhere/else/file.html' } }

  it { should contain_file('/var/www/html/myfile.html') }

end

