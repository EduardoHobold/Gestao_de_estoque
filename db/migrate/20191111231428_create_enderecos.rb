class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos do |t|
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
