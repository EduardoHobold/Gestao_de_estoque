require "application_system_test_case"

class OperacaosTest < ApplicationSystemTestCase
  setup do
    @operacao = operacaos(:one)
  end

  test "visiting the index" do
    visit operacaos_url
    assert_selector "h1", text: "Operacaos"
  end

  test "creating a Operacao" do
    visit operacaos_url
    click_on "New Operacao"

    fill_in "Descricao", with: @operacao.descricao
    fill_in "Tipo", with: @operacao.tipo
    click_on "Create Operacao"

    assert_text "Operacao was successfully created"
    click_on "Back"
  end

  test "updating a Operacao" do
    visit operacaos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @operacao.descricao
    fill_in "Tipo", with: @operacao.tipo
    click_on "Update Operacao"

    assert_text "Operacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Operacao" do
    visit operacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operacao was successfully destroyed"
  end
end
