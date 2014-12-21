require 'spec_helper'

describe 'apache' do

  context 'validations' do
    let(:facts) { { :osfamily => 'RedHat' } }

    context 'invalid docroot' do
      let(:params) { { :docroot => 'abc/def/ghi ' } }
      it { expect { should create_class('apache') }.to raise_error }
    end

  end

  context 'supported OS' do
    let(:facts) { { :osfamily => 'RedHat' } }

    it { should contain_class('apache::install') }
    it { should contain_class('apache::service') }

  end

  context 'unsupported OS' do
    let(:facts) { { :osfamily => 'Foo' } }

    it { expect { should create_class('apache') }.to raise_error(/Foo is not supported/) }
  end

end
