require 'test_helper'

class MovimentoEstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimento_estoque = movimento_estoques(:one)
  end

  test "should get index" do
    get movimento_estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_movimento_estoque_url
    assert_response :success
  end

  test "should create movimento_estoque" do
    assert_difference('MovimentoEstoque.count') do
      post movimento_estoques_url, params: { movimento_estoque: { data: @movimento_estoque.data, operacao_id: @movimento_estoque.operacao_id, pessoa_id: @movimento_estoque.pessoa_id, produto_id: @movimento_estoque.produto_id, quantidade: @movimento_estoque.quantidade } }
    end

    assert_redirected_to movimento_estoque_url(MovimentoEstoque.last)
  end

  test "should show movimento_estoque" do
    get movimento_estoque_url(@movimento_estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimento_estoque_url(@movimento_estoque)
    assert_response :success
  end

  test "should update movimento_estoque" do
    patch movimento_estoque_url(@movimento_estoque), params: { movimento_estoque: { data: @movimento_estoque.data, operacao_id: @movimento_estoque.operacao_id, pessoa_id: @movimento_estoque.pessoa_id, produto_id: @movimento_estoque.produto_id, quantidade: @movimento_estoque.quantidade } }
    assert_redirected_to movimento_estoque_url(@movimento_estoque)
  end

  test "should destroy movimento_estoque" do
    assert_difference('MovimentoEstoque.count', -1) do
      delete movimento_estoque_url(@movimento_estoque)
    end

    assert_redirected_to movimento_estoques_url
  end
end
