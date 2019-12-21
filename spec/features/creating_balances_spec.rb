require "rails_helper"

RSpec.feature "Users can create new balances" do
  scenario "with valid attributes" do
    visit "/"

    click_link "Add New Balance Information"

    fill_in "Credit Card Name", with: "Capital One"
    fill_in "Credit Card Balance", with: 45.87
    fill_in "Due Date", with: DateTime.current.strftime("%B%d%Y")
    click_button "Create Balance"

    expect(page).to have_content "Credit balance information saved."

    balance = Balance.find_by(cc_name: "Capital One")
    expect(page.current_url).to eq balance_url(balance)


    title = "Capital One - Balances - CC Balance Tracker"
    expect(page).to have_title title
  end
end