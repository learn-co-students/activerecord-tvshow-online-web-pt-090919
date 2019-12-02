class Show < ActiveRecord::Base
  
  # Returns the highest rating of all the TV shows
  def self.highest_rating
    Show.maximum(:rating)
    #=> 10
  end
  
  # Returns the tv show with the highest rating
  def self.most_popular_show
    highest_rating = self.highest_rating
    Show.find_by(rating: highest_rating)
  end
  
  # Returns the lowest rating of all the TV shows
  def self.lowest_rating
    Show.minimum(:rating)
  end
  
  # Returns the tv show with the lowest rating
  def self.least_popular_show
    lowest_rating = self.lowest_rating
    Show.find_by(rating: lowest_rating)
  end
  
  # Returns the sum of all the ratings of all the tv shows
  def self.ratings_sum
    Show.sum(:rating)
  end
  
  # Returns an array of all of the shows with a rating above 5
  def self.popular_shows
    Show.where('rating > ?', 5)
  end
  
  # Returns an array of all of the shows, listed in alphabetical order
  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
    # Show.order("name ASC")
  end
end
