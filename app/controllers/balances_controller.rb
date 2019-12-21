class BalancesController < ApplicationController
  def index
  end

  def new
    @balance = Balance.new
  end

  def create
    @balance = Balance.new(@balance_params)

    if @balance.save
      flash[:notice] = "Credit balance information saved."
      redirect_to @balance
    else
      # nothing honey
    end
  end

  def show
    @balance = Balance.find(params[:id])
  end

  private

  def balance_params
    params.require(:balance).permit(:cc_name, :cc_balance, :cc_due_date)
  end
end
