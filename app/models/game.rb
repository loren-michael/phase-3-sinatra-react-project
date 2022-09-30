class Game < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters

  def initialize(game_name:, img:)
    @game_name = game_name
    @img = img
  end
end