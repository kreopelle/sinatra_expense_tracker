class ExpensesController < ApplicationController

  get '/expenses' do
    if logged_in?
      @user = User.find(session[:user_id])
      @expenses = Expense.all
      erb :'expenses/index'
    else
      redirect to('/login')
    end
  end

  get '/expenses/new' do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :'expenses/create_expense'
    else
      redirect to('/login')
    end
  end

  post '/expenses' do
    @expense = Expense.new(params)
    if !@expense.save
      @errors = @expense.errors.full_messages
      erb :'expenses'
    else
      redirect to('/expenses')
    end
  end

  get '/expenses/:id' do
    
  end

  patch '/expenses/:id' do
    @expense =
    if !@expense.save
      @errors = @expense.errors.full_messages
      erb :'expenses'
    else
      redirect to('/expenses')
    end
  end


end
