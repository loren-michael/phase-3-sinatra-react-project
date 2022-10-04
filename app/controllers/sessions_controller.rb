class SessionsController < ApplicationController

  post '/login' do
    user = User.find_by_username(params[:username])
    if user
      user.to_json
    else
      { message: "user doesn't exist. please sign up."}.to_json
    end
  end
end