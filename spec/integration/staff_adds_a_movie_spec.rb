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

	scenario "Staff succesfully creates a new movie" do
		visit new_movie_path
		expect(page).to have_content("New Movie") 
		fill_in "Title", with: "New Capybara Movie"
		fill_in "Text", with: "This is a new Capybara movie"
		click_button "Create Movie"
		expect(page).to have_content("New Capybara Movie")
		expect(page).to have_content("This is a new Capybara movie")
	end
end