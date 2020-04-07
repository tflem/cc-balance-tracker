class IssuesController < ApplicationController
	before_action :set_balance
	before_action :set_issue, only: [:show, :edit, :update, :destroy]

	def new
		@issue = @balance.issues.build
	end

	def create
		@issue = @balance.issues.build(issue_params)

		if @issue.save
			flash[:notice] = "Issue has been created."
			redirect_to [@balance, @issue]
		else
			flash[:alert] = "Issue has not been created."
			render "new"
		end
	end

	def show
	end

	private

	def set_balance
		@balance = Balance.find(params[:balance_id])
	end

	def set_issue
		@issue = @balance.issues.find(params[:id])
	end

	def issue_params
		params.require(:issue).permit(:name, :description)
	end
end
