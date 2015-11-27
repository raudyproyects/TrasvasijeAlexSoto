class Cliente < ActiveRecord::Base
	#validates :rut, :presence => {:message => "no puede estar en blanco"}
	validates_format_of :rut, :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i, :message => "en blanco o no valido (Ej: 123.456.789-k)"
	validates :nombre, :presence => {:message => "no puede estar en blanco"}
	validates :direccion, :presence => {:message => "no puede estar en blanco"}
	validates :fono, :presence => {:message => "no puede estar en blanco"}, length: {minimum: 8, maximum: 9, :message => "no válido"}
end
