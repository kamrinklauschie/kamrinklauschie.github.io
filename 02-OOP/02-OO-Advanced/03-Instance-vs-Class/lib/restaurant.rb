class Restaurant
  # TODO: add relevant accessors if necessary

  attr_reader :city, :name
  attr_writer :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating_array = []
    @average_rating = 0
  end

  def average_rating
    @average_rating_array.sum / @average_rating_array.length
  end

  # TODO: implement .filter_by_city and #rate methods
  def rate(new_rate)
    @average_rating_array << new_rate
    return average_rating
  end

  def self.filter_by_city(restaurants, city)
    return restaurants.select { |restaurant| restaurant.city == city }
  end
end
