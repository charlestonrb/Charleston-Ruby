require 'test_helper'

class ProjectFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "guest can't create a new project" do
    get "/projects/new"
    assert_redirected_to('/')
    assert_equal 'You are not allowed to access this page.', flash[:notice]
  end

  test "member can create a new project" do
    post '/sessions', :email => 'test@foobar.com', :password => 'password'
    get "/projects/new"
    assert_response :success
  end
end
