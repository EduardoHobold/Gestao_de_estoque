class CreateOperacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :operacaos do |t|
      t.string :descricao
      t.integer :tipo

      t.timestamps
    end
  end
end
