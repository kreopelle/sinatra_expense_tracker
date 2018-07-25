class ExpensesController < ApplicationController

  get '/expenses' do
    if logged_in?
      @user = current_user
      @expenses = @user.expenses
      erb :'expenses/index'
    else
      redirect to('/login')
    end
  end

  get '/expenses/new' do
    if logged_in?
      @user = current_user
      erb :'expenses/create_expense'
    else
      redirect to('/login')
    end
  end

  post '/expenses' do
    if logged_in?
      @user = current_user
      @expense = Expense.new(params)
      if !@expense.save
        @errors = @expense.errors.full_messages
        erb :'/expenses/create_expense'
      else
        redirect to('/expenses')
      end
    else
      redirect to('/login')
    end
  end

  get '/expenses/:id' do
    @expense = Expense.find(params[:id])
    if logged_in? && @expense.user_id == current_user
      erb :'expenses/show_expense'
    else
      redirect to('/login')
    end
  end

  get '/expenses/:id/edit' do
    @expense = Expense.find(params[:id])
    if logged_in? && @expense.user_id == current_user
      @expense = Expense.find(params[:id])
      @user = User.find(session[:user_id])
      erb :'expenses/update_expense'
    else
      redirect to('/login')
    end
  end

  patch '/expenses/:id' do
    @expense = Expense.find(params[:id])
    @expense.vendor = params[:vendor]
    @expense.description = params[:description]
    @expense.date = params[:date]
    @expense.total = params[:total]
    if !@expense.save
      @errors = @expense.errors.full_messages
      erb :'/expenses/update_expense'
    else
      redirect to("/expenses/#{@expense.id}")
    end
  end

  delete '/expenses/:id/delete' do
    @expense = Expense.find(params[:id])
    if logged_in? && @expense.user_id == current_user
      @expense.destroy
      redirect to('/expenses')
    else
      redirect to('/login')
    end
  end

end
