require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert !user.save, "Saved the user without a email"
  end

  test "should not save user without password" do
    user = User.new(:email => 'test@foobar.com')
    assert !user.save, "Saved the user without a password"
  end

end
