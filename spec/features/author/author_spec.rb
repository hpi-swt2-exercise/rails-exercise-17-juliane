require 'rails_helper'

describe "Index author page", type: :feature do

	it "should render without error" do
		visit "authors"
	end

	it "should show the first and last name in one colum" do
		visit "authors"

		find("th", text: "Name")
	end

	it "should have a linkt to add author" do
		visit "authors"

		expect(page).to have_css('a', text: "add author")
	end
end