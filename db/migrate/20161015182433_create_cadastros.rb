class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :nasc
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :genero

      t.timestamps null: false
    end
  end
end
