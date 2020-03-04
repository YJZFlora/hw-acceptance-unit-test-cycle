class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_same_director director
    director.nil? ? nil : Movie.where(:director => director).to_a()
  end
end
