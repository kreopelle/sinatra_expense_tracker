require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    if logged_in?
      redirect to('/expenses')
    else
      erb :welcome
    end
  end

  helpers do

    def current_user
      User.find{|id| session[:user_id] == user.id}
    end

    def logged_in?
      !!session[:user_id]
    end

  end

end
