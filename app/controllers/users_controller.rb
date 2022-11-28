require 'pry'

class UsersController < ApplicationController

  get '/users' do
    users = User.all.includes(:characters)
    users.to_json(:include => [:characters])
  end

  post '/signup' do
    userExists = User.find_by_username(params[:username])
    if userExists
      { message: "This user already exists. Please log in." }.to_json
    else
      User.create(
        username: params[:username]
      )
      userRefresh = User.all.includes(:characters)
      userRefresh.to_json(:include => [:characters])
    end
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

end