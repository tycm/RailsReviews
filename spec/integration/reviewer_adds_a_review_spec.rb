require 'rails_helper.rb'

#rspec test
feature "Staff adds a movie and someone reviews that movie" do
	scenario "Staff succesfully creates a new movie" do
		visit new_movie_path
		expect(page).to have_content("New Movie") 
		fill_in "Title", with: "New Capybara Movie"
		fill_in "Text", with: "This is a new Capybara movie"
		click_button "Create Movie"
		expect(page).to have_content("New Capybara Movie")
		expect(page).to have_content("This is a new Capybara movie")
		fill_in "Commenter", with: "Capybara Test Commenter"
		fill_in "Body", with: "Capybara test review"
		click_button "Create Review"
		expect(page).to have_content("Capybara Test Commenter")
		expect(page).to have_content("Capybara test review")
	end
end