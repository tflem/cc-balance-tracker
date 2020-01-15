require "rails_helper"

RSpec.feature "Users can view balances" do 
  scenario "with balance details" do
    balance = FactoryBot.create(:balance, cc_name: "Capitol One")

    visit "/"
    click_link "Capitol One"
    expect(page.current_url).to eq balance_url(balance)
  end
end