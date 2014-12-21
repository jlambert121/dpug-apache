require 'spec_helper'

describe 'apache' do

  it { should contain_class('apache::install') }
  it { should contain_class('apache::service') }

end
