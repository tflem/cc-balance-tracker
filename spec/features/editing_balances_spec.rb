require "rails_helper"

RSpec.feature "Users can edit existing balances" do
  before do
    FactoryBot.create(:balance, cc_name: "Capital One") 


    visit "/"
    click_link "Capital One"
    click_link "Edit Balance"   
  end 
    

  scenario "with valid attributes" do
    fill_in "Credit Card Name", with: "Costco Capital One"
    click_button "Update Balance"       


    expect(page).to have_content "Credit balance has been updated."
    expect(page).to have_content "Costco Capital One"
  end

  scenario "with invalid attributes" do
    fill_in "Credit Card Name", with: ""
    click_button "Update Balance"


    expect(page).to have_content "Credit balance has not been updated."
  end
end

