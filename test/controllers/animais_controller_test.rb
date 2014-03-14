require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  setup do
    @animal = animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { classificacao_id: @animal.classificacao_id, identificacao: @animal.identificacao, nome: @animal.nome, propriedade_id: @animal.propriedade_id, raca_id: @animal.raca_id }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { classificacao_id: @animal.classificacao_id, identificacao: @animal.identificacao, nome: @animal.nome, propriedade_id: @animal.propriedade_id, raca_id: @animal.raca_id }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animais_path
  end
end
