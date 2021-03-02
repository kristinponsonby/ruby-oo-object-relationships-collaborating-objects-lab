class Song
    attr_accessor :artist, :name


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
       song_array = file_name.split(" - ")
       name = song_array[1]
       artist_name = song_array[0]
       my_song = Song.new(name)
       my_song.artist_name=(artist_name)
       my_song

    end
    
    def artist_name=(artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
    end



end