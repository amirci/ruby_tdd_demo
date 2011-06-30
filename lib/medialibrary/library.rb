module MediaLibrary
  
  class Library
    attr_reader :contents 
    
    def initialize
      @contents = []
    end
    
    def add(media)
      @contents << media
    end
    
    def top(n)
      critic = MovieCritic.create
      @contents.                                                
          sort { |m1, m2| critic.rank(m1) <=> critic.rank(m2) }.
          reverse.
          first(n) 
    end
  end
  
end