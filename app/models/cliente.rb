class Cliente < ActiveRecord::Base
	has_many :entregas, dependent: :nullify
	validates_format_of :rut, :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i, :message => "inválido (Ej: 123.456.789-k)"
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
	validates :rut, :presence => {:message => "no puede estar en blanco"}
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, length:{in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates :direccion, :presence => {:message => "no puede estar en blanco"}, length:{in:3..40, too_short: "demasiado corta", too_long: "demasiado larga"}
	validates :fono, :presence => {:message => "no puede estar en blanco"}, length: {minimum: 8, maximum: 11, :message => "no puede tener esa estructura"}
	validates_numericality_of :fono, :greater_than => 0, :message => "inválido"
end