require "rails_helper"

RSpec.feature "Users can view issues" do
  before do
    cb_balance = FactoryBot.create(:balance, cc_name: "Capitol One")
    FactoryBot.create(:issue, balance: cb_balance,
                      name: "Costco Visa",
                      description: "Serves as an official membership card.")
    
    wb_balance = FactoryBot.create(:balance, cc_name: "Capitol One")
    FactoryBot.create(:issue, balance: cb_balance,
                      name: "Walmart Visa",
                      description: "Serves as an official store card.")

    visit "/"
  end

  scenario "for a given balance" do
    click_link "Capitol One"

    expect(page).to have_content "Serves as an official membership card."
    expect(page).to_not have_content "Serves as an official store card."

    click_link "Serves as an official membership card."
    within("issue h2") do
      expect(page).to have_content "Serves an official membership card."
    end

    expect(page).to have_content "The premier card for gas-filling enthusiasts!"
  end    
end