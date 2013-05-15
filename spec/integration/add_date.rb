require 'spec_helper'

feature "Homework Tracker" do
	scenario "Add Homework Assignment"
		visit '/'
		click_link "+ Assignment"
		fill_in 'Name', :with => 'Horrible Homework'
		fill_in 'Date', :with => '05/18/2013'
		fill_in 'Description', :with => 'No Homework for this day!'
		click_button '+ Assignment'
		page.should have_content("The assignment has been added")
	end
end