require "pry"
class Artist

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def add_song(song)
        song.artist = self
    end


    def self.find_or_create_by_name(name)
        artist = self.all.find do |artist| 
            artist.name == name
        end
            if artist == nil
                artist = Artist.new(name)
            else
                artist
            end
    end

    def print_songs
        songs.each do |song|
           puts song.name
        end
    end

end