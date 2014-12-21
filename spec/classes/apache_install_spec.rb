require 'spec_helper'

describe 'apache::install' do

  it { should contain_package('httpd') }

end
