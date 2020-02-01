require "rails_helper"

RSpec.describe BalancesController, type: :controller do
  it "handles a missing balance correctly" do
    get :show, params: { id: "not-found" }


    expect(response).to redirect_to(balances_path)


    message = "The balance that you are looking for cannot be found."
    expect(flash[:alert]).to eq message
  end
end
