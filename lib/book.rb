class Book
  attr_accessor :author, :page_count 
  attr_reader :title, :genre
  
  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES.each do |brand|
      if genre != brand
        GENRES << genre 
      end
    end
  end
  
end