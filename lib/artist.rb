require 'pry'
class Artist
  
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
       Song.all.select do |indv_song|
        indv_song.artist == self
       end
        # binding.pry
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.count
        
    end

    def self.all
        @@all
    end


end