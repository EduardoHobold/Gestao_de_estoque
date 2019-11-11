class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :documento
      t.belongs_to :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
