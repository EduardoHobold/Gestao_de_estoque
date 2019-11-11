require "application_system_test_case"

class MovimentoEstoquesTest < ApplicationSystemTestCase
  setup do
    @movimento_estoque = movimento_estoques(:one)
  end

  test "visiting the index" do
    visit movimento_estoques_url
    assert_selector "h1", text: "Movimento Estoques"
  end

  test "creating a Movimento estoque" do
    visit movimento_estoques_url
    click_on "New Movimento Estoque"

    fill_in "Data", with: @movimento_estoque.data
    fill_in "Operacao", with: @movimento_estoque.operacao_id
    fill_in "Pessoa", with: @movimento_estoque.pessoa_id
    fill_in "Produto", with: @movimento_estoque.produto_id
    fill_in "Quantidade", with: @movimento_estoque.quantidade
    click_on "Create Movimento estoque"

    assert_text "Movimento estoque was successfully created"
    click_on "Back"
  end

  test "updating a Movimento estoque" do
    visit movimento_estoques_url
    click_on "Edit", match: :first

    fill_in "Data", with: @movimento_estoque.data
    fill_in "Operacao", with: @movimento_estoque.operacao_id
    fill_in "Pessoa", with: @movimento_estoque.pessoa_id
    fill_in "Produto", with: @movimento_estoque.produto_id
    fill_in "Quantidade", with: @movimento_estoque.quantidade
    click_on "Update Movimento estoque"

    assert_text "Movimento estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Movimento estoque" do
    visit movimento_estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movimento estoque was successfully destroyed"
  end
end
