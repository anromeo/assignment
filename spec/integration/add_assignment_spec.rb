require 'spec_helper'

feature "Homework Tracker" do
	scenario "Add Homework Assignment" do
		visit '/'
		click_link "+ Assignment"
		fill_in 'title', :with => 'Horrible Homework'
		fill_in 'date', :with => '05/18/2013'
		fill_in 'description', :with => 'No Homework for this day!'
		click_button '+ Assignment'
		page.should have_content("The assignment has been added")
	end
end