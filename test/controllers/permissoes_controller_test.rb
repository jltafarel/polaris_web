require 'test_helper'

class PermissoesControllerTest < ActionController::TestCase
  setup do
    @permissao = permissoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permissao" do
    assert_difference('Permissao.count') do
      post :create, permissao: { permissao: @permissao.permissao }
    end

    assert_redirected_to permissao_path(assigns(:permissao))
  end

  test "should show permissao" do
    get :show, id: @permissao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permissao
    assert_response :success
  end

  test "should update permissao" do
    patch :update, id: @permissao, permissao: { permissao: @permissao.permissao }
    assert_redirected_to permissao_path(assigns(:permissao))
  end

  test "should destroy permissao" do
    assert_difference('Permissao.count', -1) do
      delete :destroy, id: @permissao
    end

    assert_redirected_to permissoes_path
  end
end
