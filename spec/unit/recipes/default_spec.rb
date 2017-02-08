#
# Cookbook Name:: harden_macos
# Author:: Meg Cassidy (<meg@nuna.com>)
# Spec:: default
#
# Copyright:: 2016-2017, Nuna, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'

describe_recipe 'harden_macos::default' do
  context 'When running on mac_os_x 10.11' do
    let(:node_attributes) do
      { platform: 'mac_os_x', version: '10.11.1' }
    end

    # let(:context_node_attributes) do
    #   os_version == 11
    # end

    it 'converges successfully' do
       expect { chef_run }.to_not raise_error
    end

    it 'runs harden task with the default action' do
      expect(chef_run).to secure_harden_macos('firewall')
    end
    # it 'runs the harden_os updates topic' do
    #   expect(chef_run).to run_harden_macos('updates')
    # end

    # https://github.com/sethvargo/chefspec#testing-lwrps
  end
end
