require 'rails_helper.rb'

feature "Staff adds a movie" do
	scenario "Staff successfully navigates to th4e new movies page from the listing movies page" do
		visit movies_path
		expect(page).to have_content("Listing movies")
		click_link "New movie"
		expect(page).to have_content("New Movie")
		expect(page).to have_field("Title")
		expect(page).to have_field("Text")
	end
end