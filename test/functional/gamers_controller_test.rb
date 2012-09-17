require 'test_helper'

class GamersControllerTest < ActionController::TestCase
  setup do
    @gamer = gamers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamer" do
    assert_difference('Gamer.count') do
      post :create, gamer: { name: @gamer.name }
    end

    assert_redirected_to gamer_path(assigns(:gamer))
  end

  test "should show gamer" do
    get :show, id: @gamer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamer
    assert_response :success
  end

  test "should update gamer" do
    put :update, id: @gamer, gamer: { name: @gamer.name }
    assert_redirected_to gamer_path(assigns(:gamer))
  end

  test "should destroy gamer" do
    assert_difference('Gamer.count', -1) do
      delete :destroy, id: @gamer
    end

    assert_redirected_to gamers_path
  end
end
