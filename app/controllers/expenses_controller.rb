class ExpensesController < ApplicationController

    def create
        # byebug
        expense = Expense.create(expense_params)
        render json: expense
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
    end
    private

    def expense_params
        params.permit(:group_id, :name, :description, :amount, :user_id)
    end
end
