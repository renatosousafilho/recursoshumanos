class Departamento < ActiveRecord::Base
  attr_accessible :descricao, :nome, :departamento_funcionarios_attributes
  has_many :departamento_funcionarios, inverse_of: :departamento
  accepts_nested_attributes_for :departamento_funcionarios
end
