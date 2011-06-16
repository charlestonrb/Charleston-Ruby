require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test 'should get show' do
    get :show, id: @project.id
    assert_response :success
    assert_not_nil assigns(:project)
  end

  test 'should get new' do
    login
    get :new
    assert_response :success
    assert_not_nil assigns(:project)
  end

  test 'should post create' do
    login
    post :create, :project => {:name => 'foobar'}
    assert_response :redirect
    assert_not_nil assigns(:project)
    assert_redirected_to project_path(assigns(:project))
    assert_equal "Successfully created project.", flash[:notice]
  end

  test 'should get edit' do
    login
    get :edit, id: @project.id
    assert_response :success
    assert_not_nil assigns(:project)
  end

  test 'should put update' do
    login
    put :update, id: @project.id, project: {name: 'Foobar'}
    assert_response :redirect
    assert_not_nil assigns(:project)
    assert_redirected_to project_path(assigns(:project))
    assert_equal "Successfully updated project.", flash[:notice]
    assert_equal Project.find(@project.id).name, 'Foobar'
  end


  def setup
    @project = projects(:one)
  end

end

