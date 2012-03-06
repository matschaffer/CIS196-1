class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :gender, :remember_me
	has_many :groups, :through => :groupings
	has_many :events, :through => :user_events
	validates :username, :email, :password, :gender, :presence => true
	validates_uniqueness_of :username, :email
end
