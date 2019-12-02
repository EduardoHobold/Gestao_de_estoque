require 'rails_helper'

RSpec.describe MovimentoService, type: :model do

    context 'ao fazer' do
        let(:endereco) { FactoryBot.create(:endereco) }
        let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
        let(:grupo_produto) { FactoryBot.create(:grupo_produto) }
        let(:unidade) { FactoryBot.create(:unidade) }
        let(:produto) { FactoryBot.create(:produto, 
                                          grupo: grupo,
                                          unidade: unidade) }
        
        context 'uma compra de algum produto' do
            let(:operacao_compra) { FactoryBot.create(:compra) }
            let(:compra) { MovimentoService.comprar( FactoryBot.create(:movimento, operacao: operacao_compra) ) }

            it 'deve retornar um Movimento' do
                expect(compra).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o Movimento' do
                expect(compra.persisted?).to be true
            end
        end

        context 'uma venda com estoque menor ou igual ao do cadastro' do
            let(:operacao_compra) { FactoryBot.create(:compra) }
            let(:compra) { MovimentoService.comprar( FactoryBot.create(:movimento, operacao: operacao_compra) ) }

            let(:operacao_venda) { FactoryBot.create(:venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: operacao_venda) ) }
            
            it 'deve retornar um Movimento' do
                expect(venda).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o Movimento' do
                expect(venda.persisted?).to be true
            end
        end


        context 'uma venda com quantidade maior do que o cadastrado' do
            let(:operacao_venda) { FactoryBot.create(:venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: operacao_venda, quantidade: 15) ) }
            it 'deve validar' do
                expect{ venda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque está vaziu !!'))
            end
        end


        context 'uma devolucao de venda com estoque da compra maior ou igual que a quantidade ' do
            let(:devVenda) { FactoryBot.create(:devVenda) }
            let(:devolucao_venda) { MovimentoService.devolver_venda( FactoryBot.create(:movimento, operacao: devVenda) ) }

            it 'deve retornar um Movimento' do
                expect(devolucao_venda).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o Movimento' do
                expect(devolucao_venda.persisted?).to be true
            end
        end

        context 'uma devolucao de compra com quantidade maior do que o cadastrado ' do
            let(:devVenda) { FactoryBot.create(:devVenda) }
            let(:devolucao_venda) { MovimentoService.devolver_venda( FactoryBot.create(:movimento, operacao: devVenda, quantidade: 15) ) }
            it 'deve validar' do
                expect{ devolucao_venda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque está vaziu !!'))
            end
        end

        context 'uma devolucao de compra com estoque de compra maior ou igual que a quantidade ' do
            let(:devCompra) { FactoryBot.create(:devCompra) }
            let(:devolucao_compra) { MovimentoService.devolver_compra( FactoryBot.create(:movimento, operacao: devCompra) ) }

            it 'deve retornar um Movimento' do
                expect(devolucao_compra).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o Movimento' do
                expect(devolucao_compra.persisted?).to be true
            end
        end

        context 'uma devolucao de compra com quantidade maior do que está cadastrado ' do
            let(:devCompra) { FactoryBot.create(:devCompra) }
            let(:devolucao_compra) { MovimentoService.devolver_compra( FactoryBot.create(:movimento, operacao: devCompra, quantidade: 15) ) }
            it 'deve validar' do
                expect{ devolucao_compra }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Não foi feito um compra'))
            end
        end

    end

end