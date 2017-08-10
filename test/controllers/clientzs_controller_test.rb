require 'test_helper'

class ClientzsControllerTest < ActionController::TestCase
  setup do
    @clientz = clientzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientz" do
    assert_difference('Clientz.count') do
      post :create, clientz: { adults: @clientz.adults, email: @clientz.email, end: @clientz.end, message: @clientz.message, name: @clientz.name, rooms: @clientz.rooms, start: @clientz.start, tel: @clientz.tel }
    end

    assert_redirected_to clientz_path(assigns(:clientz))
  end

  test "should show clientz" do
    get :show, id: @clientz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientz
    assert_response :success
  end

  test "should update clientz" do
    patch :update, id: @clientz, clientz: { adults: @clientz.adults, email: @clientz.email, end: @clientz.end, message: @clientz.message, name: @clientz.name, rooms: @clientz.rooms, start: @clientz.start, tel: @clientz.tel }
    assert_redirected_to clientz_path(assigns(:clientz))
  end

  test "should destroy clientz" do
    assert_difference('Clientz.count', -1) do
      delete :destroy, id: @clientz
    end

    assert_redirected_to clientzs_path
  end
end
