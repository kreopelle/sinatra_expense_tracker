require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def slug
      self.username.gsub(" ", "-")
    end

    def current_user
      User.find{|id| session[:user_id] == user.id}
    end

    def logged_in?
      !!session[:user_id]
    end

  end

end
