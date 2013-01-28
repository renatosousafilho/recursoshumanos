class CreateDepartamentoFuncionarios < ActiveRecord::Migration
  def change
    create_table :departamento_funcionarios do |t|
      t.references :colaborador
      t.references :cargo
      t.references :departamento

      t.timestamps
    end
    add_index :departamento_funcionarios, :colaborador_id
    add_index :departamento_funcionarios, :cargo_id
    add_index :departamento_funcionarios, :departamento_id
  end
end
