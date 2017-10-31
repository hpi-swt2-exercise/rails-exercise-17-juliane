require 'rails_helper'

RSpec.describe "Author", type: :model do |author|

	author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")

	it "should be created with first name, last name and homepage" do
		expect(author.first_name).to eq("Alan")
		expect(author.last_name).to eq("Turing")
		expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
	end

	it "should be able to return the full name" do
		expect(author.name).to eq("Alan Turing")
	end

	it "should not be created without a last name" do
		author = Author.new(first_name: "Alan", homepage: "http://example.com")
		expect(author).to be_invalid
	end
end 
