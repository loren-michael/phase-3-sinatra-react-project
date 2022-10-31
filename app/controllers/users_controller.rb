require 'pry'

class UsersController < ApplicationController

  get '/users' do
    users = User.all.includes(:characters)
    users.to_json(:include => [:characters])
  end

  post '/signup' do
    exists = User.find_by_username(params[:username])
    # binding.pry
    if exists
      { message: "This user already exists. Please log in." }
    else
      user = User.create(
        username: params[:username]
      )
      User.all.to_json
    end
  end
    # exists = User.find_by_username(params[:username])
    # binding.pry
    # if exists
      # { message: "This user already exists. Please log in." }
    # else
      # User.new(params).to_json
    # end
  # end

end