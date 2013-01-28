class DepartamentoFuncionario < ActiveRecord::Base
  belongs_to :colaborador
  belongs_to :cargo
  belongs_to :departamento
  attr_accessible :colaborador_id, :cargo_id, :departamento_id
end
