class Character < ActiveRecord::Base
    belongs_to :user
    belongs_to :game

    def initialize(name:, character_class:, race:, level: 1)
        @name = name
        @character_class = character_class
        @race = race
        @level = level
    end


end