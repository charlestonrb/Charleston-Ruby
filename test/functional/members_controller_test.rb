require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test 'should get show' do

    get :show, id: @member.id
    assert_response :success
    assert_not_nil assigns(:member)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:member)
  end

  test 'should post create' do
    post :create, :member => {:name => 'foobar'}
    assert_response :redirect
    assert_not_nil assigns(:member)
    assert_redirected_to member_path(assigns(:member))
    assert_equal "Successfully created member.", flash[:notice]
  end

  test 'should get edit' do
    get :edit, id: @member.id
    assert_response :success
    assert_not_nil assigns(:member)
  end

  test 'should put update' do
    put :update, id: @member.id, member: {name: 'Foobar'}
    assert_response :redirect
    assert_not_nil assigns(:member)
    assert_redirected_to member_path(assigns(:member))
    assert_equal "Successfully updated member.", flash[:notice]
    assert_equal Member.find(@member.id).name, 'Foobar'
  end


  def setup
    @member = Member.create!
  end
end
