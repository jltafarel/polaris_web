require 'test_helper'

class InformacoesControllerTest < ActionController::TestCase
  setup do
    @informacao = informacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacao" do
    assert_difference('Informacao.count') do
      post :create, informacao: {  }
    end

    assert_redirected_to informacao_path(assigns(:informacao))
  end

  test "should show informacao" do
    get :show, id: @informacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacao
    assert_response :success
  end

  test "should update informacao" do
    patch :update, id: @informacao, informacao: {  }
    assert_redirected_to informacao_path(assigns(:informacao))
  end

  test "should destroy informacao" do
    assert_difference('Informacao.count', -1) do
      delete :destroy, id: @informacao
    end

    assert_redirected_to informacoes_path
  end
end
