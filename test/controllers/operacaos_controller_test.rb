require 'test_helper'

class OperacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operacao = operacaos(:one)
  end

  test "should get index" do
    get operacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_operacao_url
    assert_response :success
  end

  test "should create operacao" do
    assert_difference('Operacao.count') do
      post operacaos_url, params: { operacao: { descricao: @operacao.descricao, tipo: @operacao.tipo } }
    end

    assert_redirected_to operacao_url(Operacao.last)
  end

  test "should show operacao" do
    get operacao_url(@operacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_operacao_url(@operacao)
    assert_response :success
  end

  test "should update operacao" do
    patch operacao_url(@operacao), params: { operacao: { descricao: @operacao.descricao, tipo: @operacao.tipo } }
    assert_redirected_to operacao_url(@operacao)
  end

  test "should destroy operacao" do
    assert_difference('Operacao.count', -1) do
      delete operacao_url(@operacao)
    end

    assert_redirected_to operacaos_url
  end
end
