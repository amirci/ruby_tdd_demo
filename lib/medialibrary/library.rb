module MediaLibrary
  
  class Library
    attr_reader :contents 
    
    def initialize
      @contents = []
    end
    
    def add(media)
      @contents << media
    end
    
  end
  
end