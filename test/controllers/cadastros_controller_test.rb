require 'test_helper'

class CadastrosControllerTest < ActionController::TestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post :create, cadastro: { bairro: @cadastro.bairro, cep: @cadastro.cep, cidade: @cadastro.cidade, endereco: @cadastro.endereco, estado: @cadastro.estado, genero: @cadastro.genero, nasc: @cadastro.nasc, nome: @cadastro.nome }
    end

    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should show cadastro" do
    get :show, id: @cadastro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro
    assert_response :success
  end

  test "should update cadastro" do
    patch :update, id: @cadastro, cadastro: { bairro: @cadastro.bairro, cep: @cadastro.cep, cidade: @cadastro.cidade, endereco: @cadastro.endereco, estado: @cadastro.estado, genero: @cadastro.genero, nasc: @cadastro.nasc, nome: @cadastro.nome }
    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete :destroy, id: @cadastro
    end

    assert_redirected_to cadastros_path
  end
end
