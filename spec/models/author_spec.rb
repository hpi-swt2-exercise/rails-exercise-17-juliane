require 'rails_helper'

describe "Author", type: :model do |author|

	it "should be created with first name, last name and homepage" do
		author = Author.new(Alan, Turing, 'http://wikipedia.org/Alan_Turing')
		expect(author.first_name).to eq(Alan)
		expect(author.last_name).to eq(Turing)
		expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
	end
end