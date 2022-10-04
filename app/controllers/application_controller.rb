class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   users = User.all.to_json
  # end

  get "/games" do
    Game.all.to_json
  end

  get "/characters" do
    Character.all.to_json
  end

  # post '/login' do
  #   user = User.find_by_username(params[:username])
  #   if user
  #     user.to_json
  #   else
  #     { message: "user doesn't exist. please sign up."}.to_json
  #   end
  # end

  # get '/users' do
  #   User.all.to_json
  # end

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
  #     user = User.create(
  #     username: params[:username]
  #   )
  #   user.to_json
  #   end
  # end

  # get "/login" do
  #   User.all.to_json
  # end

  # get "/signup" do
  #   User.all.to_json
  # end

end
