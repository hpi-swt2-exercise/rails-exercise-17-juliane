require 'rails_helper'

describe "Edit paper page", type: :feature do

	it "should render without errors" do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
	end	

	it "should save changes" do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
		fill_in "paper_title", :with => "New Title"
		find('input[type="submit"]').click
    expect(@paper.title).to eq("New Title")
	end
end