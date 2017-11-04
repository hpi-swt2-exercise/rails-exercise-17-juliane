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

  it 'should save changes of authors' do
    paper = FactoryGirl.create :paper
    author = Author.new(first_name: "Peter", last_name: "Plagiarist")
    author.save!
    visit edit_paper_path(paper.id)
    select(author.name, :from => 'Author 1')
		find('input[type="submit"]').click
    expect(paper.authors).to include(author)
  end
end