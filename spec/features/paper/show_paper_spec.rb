require 'rails_helper'

describe "Show paper page", type: :feature do

	it "should render without errors" do
		@paper = FactoryGirl.create :paper
		visit paper_path(@paper)
	end

	it "should show the authors" do
		paper = FactoryGirl.create :paper
		visit paper_path(paper.id)
		expect(page).to have_text(paper.authors.first.name)
	end
end