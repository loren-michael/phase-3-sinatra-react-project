require 'pry'

class UsersController < ApplicationController
  get '/users' do
    binding.pry
    User.all.to_json
  end

  # get '/users/:id' do
  #   user = User.find_by_id(params[:id])
  #   if user
  #     user.to_json
  #   else
  #     { message: "no users found"}
  #   end
  # end

  # post '/signup' do
  #   exists = User.find_by_username(params[:username])

  #   if exists
  #     { message: "This user already exists. Please log in." }
  #   else
  #     User.create(
  #       username: params[:username]
  #     ).to_json
  #   end
  # end
  
end