require 'test_helper'

class ExhibitorcategoriesControllerTest < ActionController::TestCase
  setup do
    @exhibitorcategory = exhibitorcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitorcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibitorcategory" do
    assert_difference('Exhibitorcategory.count') do
      post :create, exhibitorcategory: { name: @exhibitorcategory.name }
    end

    assert_redirected_to exhibitorcategory_path(assigns(:exhibitorcategory))
  end

  test "should show exhibitorcategory" do
    get :show, id: @exhibitorcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibitorcategory
    assert_response :success
  end

  test "should update exhibitorcategory" do
    put :update, id: @exhibitorcategory, exhibitorcategory: { name: @exhibitorcategory.name }
    assert_redirected_to exhibitorcategory_path(assigns(:exhibitorcategory))
  end

  test "should destroy exhibitorcategory" do
    assert_difference('Exhibitorcategory.count', -1) do
      delete :destroy, id: @exhibitorcategory
    end

    assert_redirected_to exhibitorcategories_path
  end
end
