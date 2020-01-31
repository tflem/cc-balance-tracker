class BalancesController < ApplicationController
  def index
    @balances = Balance.all
  end

  def new
    @balance = Balance.new
  end

  def create
    @balance = Balance.new(balance_params)

    if @balance.save
      flash[:notice] = "Credit balance information saved."
      redirect_to @balance
    else
      flash.now[:alert] = "Credit balance information not saved."
      render "new"
    end
  end

  def show
    @balance = Balance.find(params[:id])
  end

  def edit
    @balance = Balance.find(params[:id])
  end

  def update
    @balance = Balance.find(params[:id])

    if @balance.update(balance_params)
      flash[:notice] = "Credit balance has been updated."
      redirect_to @balance
    else
      flash[:alert] = "Credit balance has not been updated."
      render "edit"
    end
  end

  def destroy
    @balance = Balance.find(params[:id])
    @balance.destroy


    flash[:notice] = "Credit balance has been deleted."
    redirect_to balances_path
  end

  private

    def balance_params
      params.require(:balance).permit(:cc_name, :cc_balance, :cc_due_date)
    end
end
