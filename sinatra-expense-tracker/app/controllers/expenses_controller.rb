class ExpensesController < ApplicationController

  get '/expenses' do
    if !session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @expenses = Expenses.all
      erb :'expenses/index'
    else
      redirect to('/login')
    end
  end

end
