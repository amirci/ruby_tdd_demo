require 'spec_helper'

module MediaLibrary

  describe Library do
  
    it "should create a library" do
      library = Library.new
    end
    
    it "should add a movie to the library" do
      # arrange
      library = Library.new
      expected = Array.new(10) { |i| Movie.new("New movie #{i}") }
      
      # act
      expected.each { |m| library.add(m) }
      
      # assert
      library.contents.should == expected
    end

    it "should return top 10 movies" do
      #arrange
      library = Library.new
      expected = Array.new(10) { |i| Movie.new("New movie #{i}") }
      
      # act & assert
      library.top_10.should == expected
    end
    
  end
  
end