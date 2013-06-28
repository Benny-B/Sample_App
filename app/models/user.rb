class User < ActiveRecord::Base
	
	attr_accessible :name, :email, :password, :password_confirmation, :password_digest
	attr_accessor :password, :password_confirmation
	#has_secure_password

	before_save { |user| user.email = email.downcase }
	before_save :create_remember_token

	validates :name, :presence => true, :length => {:maximum => 50}
	validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
	validates :password, :presence => true
	validates :password_confirmation, :presence => true

	private 
		def create_remember_token
			self.remember_token = SecureRandom.base64
		end
	

end
