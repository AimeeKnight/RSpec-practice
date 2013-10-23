class Book
	#a symbol is a special class in ruby that is used to define a constant named label
	attr_accessor :title, :author, :category

	def initialize title, author, category
		@title = title
		@author = author
		@category = category
	end
end