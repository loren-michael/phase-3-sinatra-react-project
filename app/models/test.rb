class CoinToss
  @@all = []
  @@heads = []

  def initialize(side)
    @side = side
    @@all << self
    if side == "heads"
      @@heads << self
    end
  end

  def side
    @side
  end

  def change(newSide)
    @side = newSide
  end

  def self.all
    @@all.length
  end

  def self.heads
    @@heads.length
  end

end

first = CoinToss.new("heads")
second = CoinToss.new("tails")
third = CoinToss.new("heads")
# puts first.side
# puts second.side

# puts first.side
# puts CoinToss.all
puts CoinToss.heads