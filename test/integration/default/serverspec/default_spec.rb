require 'spec_helper'

describe 'w_tomcat::default' do

  describe package('openjdk-7-jdk') do
    it { should be_installed }
  end

  describe package('tomcat7') do
    it { should be_installed }
  end

  describe package('tomcat7-admin') do
    it { should be_installed }
  end

  describe service('tomcat7') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(8080) do
    it { should be_listening }
  end
end
