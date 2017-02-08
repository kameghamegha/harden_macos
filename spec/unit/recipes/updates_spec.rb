#
# Cookbook Name:: harden_macos
# Author:: Meg Cassidy (<meg@nuna.com>)
# Spec:: updates
#
# Copyright:: 2016-2017, Nuna, Inc.
#
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

# require 'spec_helper'

# describe 'harden_macos::updates' do
#   context 'When running on mac_os_x' do
#     let(:chef_run) do
#       s = ChefSpec::SoloRunner.new(platform: 'mac_os_x', version: '10.11.1')
#       s.converge(described_recipe)
#     end

#     it 'converges successfully' do
#       expect { chef_run }.to_not raise_error
#     end

#     before do
#       stub_command('softwareupdate --schedule | grep "Automatic check is off"').and_return(true)
#     end

#     it 'executes softwareupdate schedule on command' do
#       expect(chef_run).to run_execute('softwareupdate on')
#     end

#   end
# end

