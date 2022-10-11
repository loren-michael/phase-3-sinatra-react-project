class SessionsController < ApplicationController

  post '/login' do
    user = User.find_by_username(params[:username])
    if user
      user.to_json
    else
      { message: "This user does not exist."}.to_json
    end
  end

end