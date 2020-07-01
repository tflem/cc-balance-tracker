require "rails_helper"

RSpec.feature "Users can delete issues" do
	let(:balance) { FactoryBot.create(:balance) }
	let(:issue) { FactoryBot.create(:issue, balance: balance) }	

	before do
		visit balance_issue_path(balance, issue)
	end

	scenario "successfully" do
		click_link "Delete Issue"

		expect(page).to have_content "Issue has been deleted."
		expect(page.current_url).to eq balance_url(balance)
	end
end