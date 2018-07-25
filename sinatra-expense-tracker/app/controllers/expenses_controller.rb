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
      redirect to('/expenses')
    else
      redirect to('/expenses')
    end
  end

  get '/expenses/:id' do
    if logged_in?
      @expense = Expense.find(params[:id])
      erb :'expenses/show_expense'
    else
      redirect to('/login')
    end
  end

  get '/expenses/:id/edit' do
    if logged_in?
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
    @expense.payment_method = params[:payment_method]
    if !@expense.save
      @errors = @expense.errors.full_messages #can't seem to have errors printed to console, but redirects properly?
      redirect to("/expenses/#{@expense.id}/edit")
    else
      redirect to("/expenses/#{@expense.id}")
    end
  end

  delete '/expenses/:id/delete' do
    if logged_in?
      @expense = Expense.find(params[:id])
      @expense.destroy
      redirect to('/expenses')
    else
      redirect to('/login')
    end
  end 

end
