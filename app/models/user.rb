class User < ActiveRecord::Base
	
	attr_accessible :name, :email, :password, :password_confirmation
	attr_accessor :password, :password_confirmation
	#has_secure_password

	validates :name, :presence => true, :length => {:maximum => 50}
	validates :email, :presence => true
	validates :password, :presence => true
	validates :password_confirmation, :presence => true
	

end
