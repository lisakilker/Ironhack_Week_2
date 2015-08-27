class PasswordChecker
	attr_accessor :email, :password
	def initialize
		@email = email
		@password = password
	end

	def password_verify
		puts "Please enter your email address."
		user_email = gets.chomp
		puts user_email
		puts "Please enter a password."
		user_password = gets.chomp
			if user_password.length >= 7
				puts "This length is good."
			else
				puts "This password isn't long enough."
			end

	end
end

new_password = PasswordChecker.new
new_password.password_verify

# The password must be longer than 7 characters
# The password must contain at least 1 letter, 1 number and 1 symbol (e.g. "#", "%", etc)
# The password must contain at least 1 uppercase and 1 lowercase letter
# The password must NOT contain neither the name nor the domain of the email.