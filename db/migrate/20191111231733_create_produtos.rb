class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.belongs_to :unidade, null: false, foreign_key: true
      t.belongs_to :grupo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
