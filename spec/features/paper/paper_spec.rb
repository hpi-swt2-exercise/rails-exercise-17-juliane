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

	it "should have a link to show the papers" do
		FactoryGirl.create :paper
		visit papers_path

		expect(page).to have_link('Show')
  end

	it "should have a link to edit the papers" do
		FactoryGirl.create :paper
		visit papers_path

		expect(page).to have_link('Edit')
  end

  it "should have a link to edit the papers" do
		FactoryGirl.create :paper
		visit papers_path

		expect(page).to have_link('Destroy')
  end

	it "should have a link to delete paper and delete it when its clicked" do
		paper = FactoryGirl.create :paper
		visit papers_path
		find("a[href='#{paper_path(paper)}']", :text => 'Destroy').click
		expect(Paper.where(id: paper.id)).not_to exist
  end

  it 'should filter papers by the year' do
    paper = FactoryGirl.create :paper
    visit papers_path+"?year=0"
    expect(page).not_to have_text(paper.title)
  end

end