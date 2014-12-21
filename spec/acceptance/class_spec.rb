require 'spec_helper_acceptance'

describe 'apache class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'apache': }
      apache::html_file { 'mypage.html': source => 'puppet:///modules/apache/mypage.html' }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

    describe package('httpd') do
      it { is_expected.to be_installed }
    end

    describe service('httpd') do
      it { is_expected.to be_enabled }
      it { is_expected.to be_running }
    end

    describe command('/usr/bin/curl http://localhost:80/mypage.html') do
      its(:stdout) { should match /test page/ }
    end

  end
end
