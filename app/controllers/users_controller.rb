class UsersController < ApplicationController
  get '/users' do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find_by_id(params[:id])
    if user
      user.to_json
    else
      { message: "no users found"}
    end
  end

  post '/signup' do
    exists = User.find_by_username(params[:username])

    if exists
      { message: "This user already exists. Please log in." }
    else
      user = User.create(
      username: params[:username]
    )
    user.to_json
    end
  end
  
end