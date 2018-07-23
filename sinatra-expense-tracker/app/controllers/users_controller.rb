class UsersController < ApplicationController

  get '/signup' do
    if !session[:user_id]
      erb: 'users/create_user' locals: {message: "Please sign up before you sign in"}
    else
      redirect to('/expenses')
  end

  post '/signup' do
    if params[:email] == "" || params[:username] == "" || params[:password] == ""
      redirect to '/signup'
    else
      raise params.inspect
      user = User.create(params)
      session[:user_id] = user.id
      redirect to('/expenses')
    end
  end

  end

  get '/login' do
    erb :'/users/login'
  end

end
