class CreateMovimentoEstoques < ActiveRecord::Migration[6.0]
  def change
    create_table :movimento_estoques do |t|
      t.date :data
      t.float :quantidade
      t.belongs_to :pessoa, null: false, foreign_key: true
      t.belongs_to :operacao, null: false, foreign_key: true
      t.belongs_to :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
