class PublicClass

	@privateInt
	
	@publicString = "Hello"
	def setPublicString(publicString)
	@publicString = publicString
	end
	
	def getPublicString
	return @publicString
	end
	
	@@staticInt
	def setStaticInt(staticInt)
	@staticInt = staticInt
	end
	
	def getstaticInt
	return @@staticInt
	end
	
	@pi = 3.14
	
	def initialize()
	end
	
	def setPrivateInt(privateInt)
	@privateInt = privateInt
	end
	
	def get_private_int
	return @privateInt
	end
	
end

class PublicSubClass < PublicClass
	
	def getPrivateInt
	return 2*super
	end
	
end


	publicClass=PublicClass.new
	
	publicClass.setPrivateInt(13)
	puts "[13] publicClass.getPrivateInt() = "
	puts publicClass.getPrivateInt
	
	publicClass.setPublicString= "World!"
	puts "[World!] publicClass.publicString = "  
	puts publicClass.getPublicString
	
	PublicClass.setStaticInt= 10;
	puts "[10] PublicClass.staticInt = "
	puts publicClass.getstaticInt
	
	puts "[3.14] PublicClass.PI = "
	puts PublicClass::pi
	
	publicSubClass = PublicSubClass.new
	publicSubClass.setPrivateInt(13)
	puts "[26] publicSubClass.getPrivateInt() = " 
    puts publicSubClass.getPrivateInt
	
	
	end
end
