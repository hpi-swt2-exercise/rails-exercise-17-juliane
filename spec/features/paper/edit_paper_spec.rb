require 'rails_helper'

describe "Edit paper page", type: :feature do

	it "should render without errors" do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
	end

	it "should save changes" do
		paper = FactoryGirl.create :paper
		visit edit_paper_path(paper.id)
		fill_in "paper_title", :with => "New Title"
		find('input[type="submit"]').click
  end

  it 'should have 5 dropdowns for author' do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper.id)
    5.times do |i|
    	expect(page).to have_field("Author #{i+1}")
    end
  end
end