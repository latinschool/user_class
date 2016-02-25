#Email, Birthdate, Password

class User
	def initialize(email, birthdate, password)
		@email = email
		@bithdate = birthdate
		@password = password
	end

	def change_email(new_email)
		@email = new_email
	end

	def email
		return @email
	end

	def login(email, password)
		if @email == email && @pasword == password
			puts "Wala!"
		else
			puts "Denied."
		end
	end
end

liza = User.new("email", "bithdate", "password")
puts liza.email