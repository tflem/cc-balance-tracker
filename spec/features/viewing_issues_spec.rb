require "rails_helper"

RSpec.feature "Users can view issues" do
  before do
    cb_balance = FactoryBot.create(:balance, cc_name: "Capitol One")
    FactoryBot.create(:issue, balance: cb_balance,
                      name: "Costco Visa",
                      description: "Serves as an official membership card.")
    
    wb_balance = FactoryBot.create(:balance, cc_name: "Walmart")
    FactoryBot.create(:issue, balance: wb_balance,
                      name: "Walmart Visa",
                      description: "Serves as an official store card.")

    visit "/"
  end

  scenario "for a given balance" do
    click_link "Capitol One"

    expect(page).to have_content "Costco Visa"
    expect(page).to_not have_content "Walmart Visa"

    click_link "Costco Visa"
    within(".container h2") do
      expect(page).to have_content "Costco Visa"
    end

    expect(page).to have_content "Serves as an official membership card."
  end    
end