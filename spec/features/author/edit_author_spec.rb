require 'rails_helper'

describe "Edit author page", type: :feature do

	it "should render without errors" do
		@author = FactoryGirl.create :author
		visit edit_author_path(@author)
	end	
end