class ExpensesController < ApplicationController

  get '/expenses' do
    if logged_in?
      @user == session[:user_id]
      @expenses == Expenses.all.collect{|e| e.user_id == session[:user_id]}
    else
      redirect to('/login')
    end 
  end

end
