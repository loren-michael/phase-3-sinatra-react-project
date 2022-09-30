class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    users = User.all.to_json
  end

  get "/games" do
    Game.all.to_json
  end

  get "/characters" do
    Character.all.to_json
  end

end
