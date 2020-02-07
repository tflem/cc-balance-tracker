require "rails_helper"

RSpec.feature "Users can create new balances" do
  before do  
    visit "/"

    click_link "Add New Balance Information"
  end

  scenario "with valid attributes" do
    fill_in "Credit Card Name", with: "Capital One"
    fill_in "Credit Card Balance", with: 45.87    
    click_button "Create Balance"

    expect(page).to have_content "Credit balance information saved."

    balance = Balance.find_by(cc_name: "Capital One")
    expect(page.current_url).to eq balance_url(balance)

    title = "Capital One - Balances - CC Balance Tracker"
    expect(page).to have_title title
  end

  scenario "with invalid attributes" do    
    click_button "Create Balance"    

    expect(page).to have_content "Credit balance information not saved."
    expect(page).to have_content "Cc name can't be blank"
    expect(page).to have_content "Cc balance can't be blank"
  end
end