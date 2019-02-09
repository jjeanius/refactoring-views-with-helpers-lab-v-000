class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist_name = Artist.find_or_create_by(name: name)
    self.artist.name = artist_name
  end

  def artist_name=(name)
  #  artist? self.artist.display_artist.name:nil
    song = Song.create(title: params[:title])
    song.artist.name = artist_name

  end
end
