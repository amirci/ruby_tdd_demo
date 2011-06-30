module MediaLibrary
  
  class Movie
    attr_reader :title
    
    def initialize(movie_title)
      @title = movie_title
    end
    
    def eql?(other)
      @title.eql?(other.title)
    end
    
    def ==(other)
      eql?(other)
    end
    
    def hash
      @title.hash
    end
    
  end
  
end