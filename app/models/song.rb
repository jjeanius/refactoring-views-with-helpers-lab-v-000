class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  #  artist = Artist.find_or_create_by(name: name)
    artist_name = self.artist.name
  end

  def artist_name=(name)
  #  artist? self.artist.display_artist.name:nil

    
  end
end
