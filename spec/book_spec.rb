require 'spec_helper'

#parameter to describe explains what you’re testing
#in this case it's the Book class name
describe Book do
	before :each do
		@book = Book.new("Title", "Author", :category)
	end

	#hash indicates instance method
	describe "#new" do
		it "takes three parameters and returns a Book object" do
			#object.should do_something
			@book.should be_an_instance_of Book
		end
	end

	#== or method eql both return true if both objects 
	#have the same content
	#equal method only returns true if both objects are 
	#the same exact object in memory
	describe "#title" do
		it "returns the correct title" do
			@book.title.should eql "Title"
		end
	end

	describe "#author" do
		it "returns the correct Author" do
			@book.author.should eql "Author"
		end
	end

	describe "#category" do
		it "returns the correct category" do
			@book.category.should eql :category
		end
	end
end