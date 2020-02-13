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
    track = self.new 
    track.save
    track
  end
  
  def self.new_by_name(title)
    track = self.new 
    track.save
    track.name = title 
    track 
  end
  
  def self.create_by_name(title)
     track = self.new 
    track.save
    track.name = title 
    track 
  end
    
  def self.find_by_name(title)
    @@all.find{|song| song.name == title}
  end
  
  def self.find_or_create_by_name(title)
    if self.find_by_name(title) != NIL
      self.find_by_name(title)
    else 
      self.create_by_name(title)
    end
  end
  
  def self.alphabetical
    @@all.sort_by(&:name)
  end
  
  def self.new_from_filename(file)
    file_array = file.split(" - ")
    track = self.new
    file_array[0] = track.name
    file_mp3 = file_array[1].split(".")
    file_mp3[0] = track.
    file_array.collect do |i|
      if i == "-" || "." || "mp3"
        i.delete 
      

end
