require 'pry-byebug'
require 'sqlite3'

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  results = db.execute("SELECT COUNT (*) FROM artists")
  # Alternative - results.flatten.first
  results[0][0]
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  results = db.execute("SELECT COUNT (*) FROM #{table_name}")
  results[0][0]
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  results = db.execute("SELECT name FROM artists ORDER BY name ASC")
  return results.flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'")
  return results.flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
  length = min_length * 60_000
  results = db.execute("SELECT name FROM tracks
    WHERE milliseconds >= #{length}
    ORDER BY milliseconds ASC")
  return results.flatten
end
