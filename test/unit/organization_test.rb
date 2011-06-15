require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  test 'organization' do
    assert_equal Organization.new.valid?, true
  end
end
