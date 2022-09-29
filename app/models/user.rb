class User < ActiveRecord::Base
  has_many :characters
  has_many :games, through: :characters

end