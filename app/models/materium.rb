class Materium < ActiveRecord::Base
	self.table_name = "materias"
	has_many :entregas, dependent: :nullify
	validates_numericality_of :codigo, :greater_than => 0, :message => "inválido"
	validates :codigo, :presence => {:message => "no puede estar en blanco"}
	validates :codigo, uniqueness: {case_sensitive: false ,message: "ya le pertenece a otra materia prima"}
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, length:{in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
end
