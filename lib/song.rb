require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << self
  end

  def self.new_by_name(name)
    self.new(name)
  end

  def self.create_by_name(name)
    self.new << name
  end

  def self.find_by_name(name)
    @@all.find{|nam| nam.name == name}
  end

end
