class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating)[0]
  end
  
  def self.lowest_rating
    minimum(:rating)
  end
  
  def self.least_popular_show
    where("rating = #{lowest_rating}")[0]
  end
  
  def self.ratings_sum
    sum(:rating)
  end
  
  def self.popular_shows
    where("rating > ?", 5)
  end
  
  def self.shows_by_alphabetical_order
    order(:name)
  end
  
end