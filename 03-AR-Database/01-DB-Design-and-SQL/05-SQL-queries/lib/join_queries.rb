require 'pry-byebug'
require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist.
  results = db.execute("SELECT tracks.name, albums.title, artists.name FROM tracks
    JOIN albums ON tracks.album_id = albums.id
    JOIN artists ON albums.artist_id = artists.id;")
  return results
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # Find number of tracks for genre
  # Add length of all songs, divide by number of all songs
  # Return as a formatted hash
  stats_array = db.execute("SELECT genres.name,
    COUNT(tracks.genre_id),
    ROUND(AVG(tracks.milliseconds)/ 60000, 2)  FROM tracks
    JOIN genres ON genres.id = tracks.genre_id
    WHERE genres.name = '#{genre_name}';")
  transformed_array = stats_array.flatten
  stats_hash = {
    category: transformed_array[0],
    number_of_songs: transformed_array[1],
    avg_length: transformed_array[2]
  }
  return stats_hash
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs for a given genre.
end
