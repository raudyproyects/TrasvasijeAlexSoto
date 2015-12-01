class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new
   		if user.has_role? :administrador #Administrador puede hacer todo
    		 can :manage, :all
   		elsif user.has_role? :empleado #Empleado puede Crear, Modificar y Listar, pero no puede Eliminar
     		can :create, :all
     		can :update, :all 
     		can :read, :all
   		end
	end
end