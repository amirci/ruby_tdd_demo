require 'spec_helper'

module MediaLibrary
  
  describe Movie do
    
    it "creates a movie with title" do
      movie = Movie.new("Blazing Saddles")
    end
    
    it "should return the title" do
      movie = Movie.new("Blazing Saddles")
      movie.title.should == "Blazing Saddles"
    end
  end
  
end