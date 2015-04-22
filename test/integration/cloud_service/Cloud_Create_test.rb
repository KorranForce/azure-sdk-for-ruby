#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'integration/test_helper'

describe Azure::CloudServiceManagementService do
  include Azure::Core::Utility

  subject { Azure::CloudServiceManagementService.new }
  let(:options) do
    {
      location: 'West US',
      description: 'Test'
    }
  end

  before do
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  describe '#create_cloud_service' do
    before do
      @cloud_name = random_string('test-service-cloud', 10)
      subject.create_cloud_service(@cloud_name, options)
    end

    it 'Creates a new cloud service in Windows Azure.' do
      cloud_service = subject.get_cloud_service_properties(@cloud_name)
      assert cloud_service.name, @cloud_name
      assert cloud_service.location, options[:location]
      assert cloud_service.virtual_machines, Hash.new
    end
  end
end