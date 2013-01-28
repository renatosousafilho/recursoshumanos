class CreateColaboradors < ActiveRecord::Migration
  def change
    create_table :colaboradors do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
