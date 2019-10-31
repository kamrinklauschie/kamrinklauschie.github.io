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

end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs for a given genre.
end

