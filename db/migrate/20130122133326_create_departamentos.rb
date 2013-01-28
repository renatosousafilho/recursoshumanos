class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
