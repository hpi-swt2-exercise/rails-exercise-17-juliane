require 'rails_helper'

describe "Index paper page", type: :feature do

	it "should render without error" do
		visit papers_path
	end

	it "should show all papers" do
		visit papers_path
		FactoryGirl.create :paper
		expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(page).to have_text('Mind 49: 433-460')
    expect(page).to have_text(1950)
	end
end