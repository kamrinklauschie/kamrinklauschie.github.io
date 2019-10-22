require 'csv'

def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  movie_data_array = []
  CSV.foreach(file_path) do |movie_data|
    if movie_data[1].to_i < max_year
      movie_data_array.push(name: movie_data[0], year: movie_data[1].to_i, earnings: movie_data[2].to_i)
    end
  end
  movie_data_array.sort_by! { |movie| movie[:earnings] }.reverse!
  return movie_data_array.first(number)
end
