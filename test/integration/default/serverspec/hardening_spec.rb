#
# Cookbook Name:: harden_macos
# Author:: Meg Cassidy (<meg@nuna.com>)
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

describe 'harden_macos::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe 'enable firewall' do
    describe command('defaults read /Library/Preferences/com.apple.alf globalstate') do
      its(:stdout) { should match /^1$/ }
    end

    describe 'enable firewall stealthmode' do
      describe command('/usr/libexec/ApplicationFirewall/socketfilterfw --getstealthmode') do
        its(:stdout) { should match /Stealth mode enabled/ }
      end
    end
  end

  describe 'Safari disable opening files after downloading' do
    describe command('defaults read /Users/vagrant/Library/Preferences/com.apple.Safari AutoOpenSafeDownloads') do
      its(:stdout) { should match /^0$/ }
    end
  end

  describe 'Disable Safari Spotlight Suggestions' do
    describe command('defaults read /Users/vagrant/Library/Preferences/com.apple.Safari UniversalSearchEnabled') do
      its(:stdout) { should match /^0$/ }
    end
  end

end
