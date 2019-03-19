require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

def self.create
  song = self.new
  song.save
  song
end

def self.new_by_name(song_name)
  song = self.new
  song.name = song_name
  song
end

def self.create_by_name(song_name)
  song = self.create
  song.name = song_name
  song

end

def self.find_by_name(song_name)
  self.all.find{ |song| song.name == song_name}
end

def self.find_or_create_by_name(song_name)
  find_by_name(song_name) || create_by_name(song_name)
end

def self.alphabetical
  self.all.sort_by { |song| song.name}
end

def self.new_from_filename(filename)
  title = filename.split(" ") #take the argument the user entered and split into an array,
  #save it in the variable "title"
  artist = [0]
  song_name, extension = title[1].split(".")


#   song = self.create
#   song.name =
# end
end


# def self.destroy_all
#   self.all.delete
# end
  def save
    self.class.all << self
  end



end
