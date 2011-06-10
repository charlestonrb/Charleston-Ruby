require 'test_helper'

class ProjectFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "guest can't create a new project" do
    get "/projects/new"
    assert_redirected_to('/')
    assert_equal 'You are not allowed to access this page.', flash[:notice]
    # assert_response :success
    #  
    # post_via_redirect "/login", :username => users(:avs).username, :password => users(:avs).password
    # assert_equal '/welcome', path
    # assert_equal 'Welcome avs!', flash[:notice]
    #  
    # https!(false)
    # get "/posts/all"
    # assert_response :success
    # assert assigns(:products)
  end
  
  test "member can create a new project" do
    login(:one) do |sess|
      sess.get "/projects/new"
      assert_response :success
    end
  end
  
  private
 
  module CustomDsl
    def browses_site
      get "/log_in"
      assert_response :success
    end
  end
 
  def login(user)
    open_session do |sess|
      sess.extend(CustomDsl)
      u = users(user)
      sess.post "/sessions", :username => u.email, :password => 'test'
      assert_equal "/", sess.path
      yield sess
    end
  end
end
