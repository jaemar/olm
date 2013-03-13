class User < ActiveRecord::Base
  require Rails.root.join('lib', 'devise', 'encryptors', 'md5')
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :encryptable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :firstname, :lastname
  # attr_accessible :title, :body
  validates :username, :firstname, :lastname, presence: true
  validates :username, length: { minimum: 5 }

  def password_salt
    'no salt'
  end

  def password_salt=(new_salt)

  end
end
