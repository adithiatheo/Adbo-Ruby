class PublicClass
	attr_accessor :private_int=1, :public_string="Hello", :static_int, :pi=3.14
	
	def initialize()
	end
	
	def set_private_int(private_int)
	@private_int = private_int
	end
	
	def get_private_int
	attr_reader :private_int
	end
	
end

class PublicSubClass < PublicClass
	
	def get_private_int
	@private_int = 2*super.get_private_int
	end
	
end

class LanguagesExploration
	def initialize()
	play()
	end
	
	def play
	public_class=PublicClass.new
	public_class.set_private_int(13)
	puts "[13] publicClass.getPrivateInt() = " + public_class.get_private_int
	public_class.public_string = "World!"
	puts "[World!] publicClass.publicString = " + public_class.public_string
	PublicClass.staticint = 10;
	puts "[10] PublicClass.staticInt = " + PublicClass.staticint
	puts "[3.14] PublicClass.PI = " + PublicClass.pi
	
	public_sub_class = PublicSubClass.new
	public_sub_class.set_private_int(13)
	puts "[26] publicSubClass.getPrivateInt() = " + public_sub_class.get_private_int	
	end
end




	
	
	
	
	
	
