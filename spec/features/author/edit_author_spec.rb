require 'rails_helper'

describe "Edit author page", type: :feature do

	it "should render without errors" do
		@author = FactoryGirl.create :author
		visit edit_author_path(@author)
	end	

	it "should save changes" do
		@author = FactoryGirl.create :author
		visit edit_author_path(@author)
		fill_in "author_first_name", :with => "Alan Mathison"
		find('input[type="submit"]').click		
	end
end