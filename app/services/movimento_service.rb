class MovimentoService

    def self.comprar(movimento)
        new(movimento).comprar
    end

    def self.vender(movimento)
        new(movimento).vender
    end

    def self.devolve_compra(movimento)
        new(movimento).devolve_compra
    end

    def self.devolve_venda(movimento)
        new(movimento).devolve_venda
    end

    def initialize(movimento)
        @data = movimento.data
        @quantidade = movimento.quantidade
        @pessoa = movimento.pessoa
        @operacao = movimento.operacao
        @produto = movimento.produto
    end

    def cria_movimento
        movimento = Movimento.new(pessoa: @pessoa,
                         operacao: @operacao,
                         data: @data,
                         quantidade: @quantidade,
                         produto: @produto)
        movimento.save 
        movimento
    end

    def comprar
        self.movimento
    end

    def vender 
        estoque = Movimento.por_operacao(@produto, Date.today, 2) + #compra
                  Movimento.por_operacao(@produto, Date.today, 3) - #devolucao de venda
                  Movimento.por_operacao(@produto, Date.today, 1) - #venda
                  Movimento.por_operacao(@produto, Date.today, 4) #devolucao de comrpa
                
        self.valida_quantidade(estoque)
    end


    def devolve_compra
        estoque = Movimento.por_operacao(@produto, Date.today, 2) #compra

        self.valida_quantidade(estoque)
    end

    def devolve_venda
        estoque = Movimento.por_operacao(@produto, Date.today, 1) #venda

        self.valida_quantidade(estoque)
    end


    def valida_quantidade(estoque)
        if estoque >= @quantidade
            self.cria_movimento
        else
            raise StandardError, 'A Sua quantidade é maior que o estoque atual !!'
        end
    end
    
end