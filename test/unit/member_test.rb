require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "should not save new member without email" do
    member = Member.new
    assert !member.save, "Saved the user without a email"
  end

  test "should not save new member without password" do
    member = Member.new(:email => 'test@foobar.com')
    assert !member.save, "Saved the user without a password"
  end

end
