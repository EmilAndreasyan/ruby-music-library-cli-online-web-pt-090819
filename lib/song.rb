
class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
    save
end

    def self.all
    @@all
    end

    def self.destroy_all
    @@all.clear
    end

    def save
    @@all << self
    end

    def self.create(name)
    song = self.new(name)
    song.save
    song
    end

    def artist
    @artist
    end

    def self.find_by_name(name)
    @@all.find do |song|
    song.name == name
    end
    end

    def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
    end
end
