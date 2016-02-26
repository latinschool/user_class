
class User
	def initialize(email, password, birthday)
		@email = email
		@password = password
		@birthday = birthday

		confirm_password

		@username
		@name
		@location
		@status = []
	end

	def email
		@email
	end

	def birthday
		@birthday
	end

	def create_username(username)
		@username = username
	end

	def username
		return @username
	end

	def set_name(name)
		@name = name
	end

	def name
		@name
	end

	def set_location(location)
		@location = location
	end

	def location
		@location
	end

	def set_status(status)
		@status << status
	end

	def status
		@status.last
	end


	### PASSWORD CONFIRMATION METHODS ##
	def ask_for_password
		puts "Please verify password"
		confirmation = gets.chomp
		return confirmation
	end

	def confirm_password
		confirmation = ask_for_password
		if confirmation == @password
			puts "Welcome!"
		elsif confirmation == "exit"
			puts "Signup Unsuccessful"
		else
			puts "confirmation failed"
			confirm_password
		end
	end

	## /END/ Password confirmation methods ##

end

me = User.new("email", "password", "birthday")
