class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }.uniq
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.reduce(:+)
  end

  def self.most_prolific
    self.all.max { |artist1, artist2| (artist1.paintings.length.to_f / artist1.years_experience) <=> (artist2.paintings.length.to_f / artist2.years_experience) }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
