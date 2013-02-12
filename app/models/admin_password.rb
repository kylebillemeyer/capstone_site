class AdminPasswordValidator < ActiveModel::Validator
  	ADMIN_PASS = "hidethis" #@fixme: this is awful.
    def validate(pass)
	    unless pass.password == ADMIN_PASS
	      pass.errors[:password] = 'Admin password is incorrect!'
	    end
    end
end

class AdminPassword 
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	attr_accessor :password

	validates_with AdminPasswordValidator

	def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)
		end
	end

	def persisted?
		false
	end
end