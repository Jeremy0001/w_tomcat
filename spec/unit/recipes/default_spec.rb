#
# Cookbook Name:: w_tomcat
# Spec:: default
#
# Copyright 2015 The Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'spec_helper'

describe 'w_tomcat::default' do
  context 'When installing and configuring tomcat 7' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['tomcat']['base_version'] = 7
      end.converge(described_recipe)
    end

    it 'includes java default recipe' do
      expect(chef_run).to include_recipe('java::default')
      expect(chef_run).to install_package('openjdk-7-jdk')
    end

    it 'includes tomcat default recipe' do
      expect(chef_run).to include_recipe('tomcat::default')
      expect(chef_run).to install_package('tomcat7')
      expect(chef_run).to install_package('tomcat7-admin')
    end

    it 'creates firewall rule to alow port 8080' do
      expect(chef_run).to create_firewall_rule('http').with(port: 8080, command: :allow)
    end
  end
end
