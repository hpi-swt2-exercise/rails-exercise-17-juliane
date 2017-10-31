require 'rails_helper'

describe "Index author page", type: :feature do

	it "should render without error" do
		visit authors_path
	end

	it "should show the first and last name in one colum" do
		visit authors_path

		find("th", text: "Name")
	end

	it "should have a linkt to add author" do
		visit authors_path

		expect(page).to have_css('a', text: "Add author")
	end

	it "should have a link to show the authors" do
		FactoryGirl.create :author
		visit authors_path

		expect(page).to have_link('Show')
	end

	it "should link to edit author page" do 
		FactoryGirl.create :author
		visit authors_path

		expect(page).to have_link('Edit')
	end

	it "should have a link to delete an author" do
		FactoryGirl.create :author
		visit authors_path

		expect(page).to have_link('Destroy')
	end

	it "should have a link to delete author and delete it when its clicked" do
		author = FactoryGirl.create :author
		visit authors_path
		find("a[href='#{author_path(author)}']", :text => 'Destroy').click
		expect(Author.where(id: author.id)).not_to exist
	end
end