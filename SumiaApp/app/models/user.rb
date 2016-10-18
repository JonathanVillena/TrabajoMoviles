class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, 
          :omniauthable # , :confirmable
          
  include DeviseTokenAuth::Concerns::User
  
  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end
  
  def self.create_user_from_omniauth(auth)
    create(
    provider: auth['provider'],
    uid: auth['uid'],
    name: auth['info']['name']
    )  
  end
end
