require "rails_helper"

RSpec.feature "Users can create new issues" do
	before do
		balance = FactoryBot.create(:balance, cc_name: "Capital One")

		visit balance_path(balance)
		click_link "New Issue"
	end

	scenario "with valid attributes" do
		fill_in "Name", with: "Costco Visa"
		fill_in "Description", with: "Serves as an official membership card."
		click_button "Create Issue"

		expect(page).to have_content "Issue has been created."
	end

	scenario "with invalid attributes" do
		click_button "Create Issue"

		expect(page).to have_content "Issue has not been created."
		expect(page).to have_content "Name can't be blank."
		expect(page).to have_content "Description can't be blank."
	end
end


