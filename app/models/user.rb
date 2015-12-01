class User < ActiveRecord::Base
  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable

  validates :username, :presence => {:message => "no puede estar en blanco"}
  validates :email, :presence => {:message => "no puede estar en blanco"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {:with => VALID_EMAIL_REGEX , message: "invalido"}
  validates :email, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
  validates :password, :presence => {:message => "no puede estar en blanco"}, length: {minimum: 8, maximum: 16, :message => "debe tener al menos 8 caracteres"}
  validates :password_confirmation, :presence => {:message => "no puede estar en blanco"}
  #validates_presence_of :password_confirmation, if: :password_changed?

  ROLES = %i[administrador empleado]

  def roles=(roles)
    roles = [*roles].map { |r| r.to_sym }
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def has_role?(role)
    roles.include?(role)
  end

end
