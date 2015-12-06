class Entrega < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :materia
	validates_numericality_of :codigo, :greater_than => 0, :message => "inválido"
	validates :codigo, :presence => {:message => "no puede estar en blanco"}
end





#
#validates :codigo, uniqueness: {case_sensitive: false ,message: "ya le pertenece a otra categoría"}
#validates :nombre, :presence => {:message => "no puede estar en blanco"}, length:{in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
