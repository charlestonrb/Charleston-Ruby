require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test 'project' do
    assert_equal Project.new.valid?, true
  end
end
