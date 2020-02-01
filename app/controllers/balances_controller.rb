class BalancesController < ApplicationController
  before_action :set_balance, only: [:show, :edit, :update, :destroy]


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
  end

  def edit
  end

  def update
    if @balance.update(balance_params)
      flash[:notice] = "Credit balance has been updated."
      redirect_to @balance
    else
      flash[:alert] = "Credit balance has not been updated."
      render "edit"
    end
  end

  def destroy
    @balance.destroy


    flash[:notice] = "Credit balance has been deleted."
    redirect_to balances_path
  end

  private

    def set_balance
      @balance = Balance.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The balance that you are looking for cannot be found."
      redirect_to balances_path
    end

    def balance_params
      params.require(:balance).permit(:cc_name, :cc_balance, :cc_due_date)
    end
end
