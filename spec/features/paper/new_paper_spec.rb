require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render without error" do
    visit new_paper_path
  end

  it "should have input for title venue and year" do
    visit new_paper_path

    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end

  it "should be able to save a paper after filling in the parameter and pressing the submit button" do
    visit new_paper_path
    fill_in 'paper_title', :with => 'COMPUTING MACHINERY AND INTELLIGENCE'
    fill_in 'paper_venue', :with => 'Mind 49: 433-460'
    fill_in 'paper_year', :with => 1950
    oldcount = Paper.count
    find('input[type="submit"]').click
    expect(Paper.count).to eq(oldcount+1)
  end
end