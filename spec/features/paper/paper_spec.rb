require 'rails_helper'

describe "Index paper page", type: :feature do

	it "should render without error" do
		visit papers_path
	end

	it "should show all papers" do
		paper = FactoryGirl.create :paper
    visit papers_path
		expect(page).to have_text(paper.title)
    expect(page).to have_text(paper.venue)
    expect(page).to have_text(paper.year)
  end

	it "should have a link to show the authors" do
		FactoryGirl.create :paper
		visit papers_path

		expect(page).to have_link('Show')
	end
end