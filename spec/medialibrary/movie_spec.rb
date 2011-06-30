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

    it "should have equality by title" do
      m1 = Movie.new('Blazing Saddles')
      m2 = Movie.new('Blazing Saddles')

      m1.should == m2
    end


  end
  
end