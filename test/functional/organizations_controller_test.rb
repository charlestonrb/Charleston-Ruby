require 'test_helper'

class OrganizationsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations)
  end

  test 'should get show' do

    get :show, id: @organization.id
    assert_response :success
    assert_not_nil assigns(:organization)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:organization)
  end

  test 'should post create' do
    post :create, :organization => {:name => 'foobar'}
    assert_response :redirect
    assert_not_nil assigns(:organization)
    assert_redirected_to organization_path(assigns(:organization))
    assert_equal "Successfully created organization.", flash[:notice]
  end

  test 'should get edit' do
    get :edit, id: @organization.id
    assert_response :success
    assert_not_nil assigns(:organization)
  end

  test 'should put update' do
    put :update, id: @organization.id, organization: {name: 'Foobar'}
    assert_response :redirect
    assert_not_nil assigns(:organization)
    assert_redirected_to organization_path(assigns(:organization))
    assert_equal "Successfully updated organization.", flash[:notice]
    assert_equal Organization.find(@organization.id).name, 'Foobar'
  end


  def setup
    @organization = Organization.create!
  end
end
