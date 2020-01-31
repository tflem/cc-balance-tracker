require "rails_helper"

RSpec.feature "Users can delete balances" do
  scenario "successfully" do
    FactoryBot.create(:balance, cc_name: "Capital One")


    visit "/"
    click_link "Capital One"
    click_link "Delete Balance"


    expect(page).to have_content "Credit balance has been deleted."
    expect(page.current_url).to eq balances_url
    expect(page).to have_no_content "Capital One"
  end
end
