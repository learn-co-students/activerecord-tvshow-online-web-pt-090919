def most_popular_show
  Show.where("rating = highest_rating")
end

