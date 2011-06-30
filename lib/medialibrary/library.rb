module MediaLibrary
  
  class Library
    attr_reader :contents 
    
    def initialize
      @contents = []
    end
    
    def add(media)
      @contents << media
    end
    
    def top_10
      @contents
    end
  end
  
end