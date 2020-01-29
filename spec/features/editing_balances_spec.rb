require "rails_helper"

RSpec.feature "Users can edit existing balances" do
  scenario "with valid attributes" do
    FactoryBot.create(:balance, cc_name: "Capital One")

    visit "/"
    click_link "Capital One"
    click_link "Edit Balance"
    fill_in "Credit Card Name", with: "Costco Capital One"
    click_button "Update Balance"


    expect(page).to have_content "Balance has been updated."
    expect(page).to have_content "Costco Capital One"
  end
end

