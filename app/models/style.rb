class Style < ApplicationRecord
  has_many :beers

  def beer_count
    self.beers.count
  end
end
