class Library
	require 'yaml'
	attr_accessor :books

	def initialize lib_file = false
		@lib_file = lib_file
    #load(File.read) takes YAML data string and
    #converts it back to Ruby object
    @books = @lib_file ? YAML::load(File.read(@lib_file)) : []
	end

	def get_books_in_category category
		@books.select { |book| book.category == category }
	end

	def add_book book
		@books << book
	end

	def get_book title
		@books.select.first { |book| book.title == title }
	end

	def save lib_file = false
    #set @lib_file to lib_file if lib_file passed to save method
    #or set @lib_file to @lib)file if lib_file passed on instantiate
    #or set @lib_file to new library.yml file
    @lib_file = lib_file || @lib_file || "library.yml"
    File.open @lib_file, "w" do |f|
      f.write YAML::dump @books                        
    end 
	end
end