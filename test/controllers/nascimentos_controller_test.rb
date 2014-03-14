require 'test_helper'

class NascimentosControllerTest < ActionController::TestCase
  setup do
    @nascimento = nascimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nascimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nascimento" do
    assert_difference('Nascimento.count') do
      post :create, nascimento: { data: @nascimento.data }
    end

    assert_redirected_to nascimento_path(assigns(:nascimento))
  end

  test "should show nascimento" do
    get :show, id: @nascimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nascimento
    assert_response :success
  end

  test "should update nascimento" do
    patch :update, id: @nascimento, nascimento: { data: @nascimento.data }
    assert_redirected_to nascimento_path(assigns(:nascimento))
  end

  test "should destroy nascimento" do
    assert_difference('Nascimento.count', -1) do
      delete :destroy, id: @nascimento
    end

    assert_redirected_to nascimentos_path
  end
end
