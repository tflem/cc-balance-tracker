require "rails_helper"

RSpec.feature "Users can edit existing issues" do
	let(:balance) { FactoryBot.create(:balance) }
	let(:issue) { FactoryBot.create(:issue, balance: balance) }

	before do
		visit balance_issue_path(balance, issue)
		click_link "Edit Issue"
	end

	scenario "with valid attributes" do
		fill_in "Name", with: "Gas Card"
		click_button "Update Issue"

		expect(page).to have_content "Issue has been updated."

		within("#issue h2") do
			expect(page).to have_content "Gas Card"
			expect(page).not_to have_content issue.name
		end
	end

	scenario "with invalid attributes" do
		fill_in "Name", with: ""
		click_button "Update Issue"

		expect(page).to have_content "Issue has not been updated."
	end
end


