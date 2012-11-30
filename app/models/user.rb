class User < ActiveRecord::Base
  has_many :api_keys
  has_many :user_spelling_patterns, order: "position ASC"
  has_many :spelling_patterns, through: :user_spelling_patterns, order: "user_spelling_patterns.position ASC"

  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

end
