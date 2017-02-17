class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	attr_accessor :login
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable
  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_hash).first
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
      
    end
  end
end
