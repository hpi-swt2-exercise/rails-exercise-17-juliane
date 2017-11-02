require 'rails_helper'

RSpec.describe Paper, type: :model do

	it "should be created with title venue and year" do
		paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
		expect(paper.year).to eq(1950)
		expect(paper.venue).to eq("Mind 49: 433-460")
		expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
	end
end
