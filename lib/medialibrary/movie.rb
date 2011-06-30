module MediaLibrary
  
  class Movie
    attr_reader :title
    
    def initialize(movie_title)
      @title = movie_title
    end
    
  end
  
end