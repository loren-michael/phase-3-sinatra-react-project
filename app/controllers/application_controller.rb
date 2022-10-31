require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/games' do
    Game.all.to_json
  end

  post '/games' do
    game = Game.create(
      game_name: params[:game_name]
    )
    game.to_json
  end


  get '/characters' do
      characters = Character.all.includes(:user)
      characters.to_json(:include => [:user])
  end

  post '/characters' do
    char = Character.create(
      name: params[:name],
      race: params[:race],
      level: params[:level],
      character_class: params[:character_class],
      icon: params[:icon],
      game_id: nil,
      user_id: params[:user_id]
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
