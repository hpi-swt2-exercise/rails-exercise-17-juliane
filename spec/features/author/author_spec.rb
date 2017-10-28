require 'rails_helper'

describe "Index author page", type: :feature do

	it "should render without error" do
		visit "authors"
	end
end