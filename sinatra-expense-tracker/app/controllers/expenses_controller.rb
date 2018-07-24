class ExpensesController < ApplicationController

  get '/expenses' do
    if logged_in?
      @user = User.find(session[:user_id])
      @expenses = Expenses.all
      erb :'expenses/index'
    else
      redirect to('/login')
    end
  end

end
