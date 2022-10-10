require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   users = User.all.to_json
  # end

  get '/games' do
    Game.all.to_json
  end

  get '/characters' do
    Character.all.to_json
  end

  get '/:id/games' do
    user = User.find_by_id(params[:id])
    # binding.pry
    user.games.all.to_json
  end

  get '/:id/characters' do
    user = User.find_by_id(params[:id])
    # binding.pry
    user.characters.all.to_json
  end

  post '/characters' do
    char = Character.create(
      name: params[:name],
      race: params[:race],
      level: params[:level],
      character_class: params[:character_class],
      icon: params[:icon],
      game_id: nil,
      user_id: params[:user_id],
    );
    char.to_json
  end

  patch '/characters/:id' do
    char = Character.find(params[:id])
    char.update(level: params[:level])
  end

  delete '/characters/:id' do
    char = Character.find(params[:id])
    char.destroy;
    char.to_json
  end

end
