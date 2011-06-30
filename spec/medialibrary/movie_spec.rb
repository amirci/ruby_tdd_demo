require 'spec_helper'

module MediaLibrary
  
  describe Movie do
    
    it "creates a movie with title" do
      movie = Movie.new("Blazing Saddles")
    end
    
  end
  
end