class Game < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters

  def initialize(name:)
    @name = name
  end
end