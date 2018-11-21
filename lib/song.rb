class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = self.new
    new_song.save
    new_song
  end

  def self.create_by_name(name)
    new_song = self.new
    new_song.name=(name)
    new_song.save
    new_song
  end

  def self.new_by_name(name)
    new_song = self.new
    new_song.name=(name)
    new_song.save
    new_song
  end

  def self.find_by_name(name)
     self.all.find{|s| s.name == name}
  end

end
