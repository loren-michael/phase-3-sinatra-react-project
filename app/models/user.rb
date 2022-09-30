class User < ActiveRecord::Base
  has_many :characters
  has_many :games, through: :characters

  def initialize(name: , character_class:, race:, level:)
    @name = name
    @character_class = character_class
    @race = race
    @level = level
  end

end