require 'spec_helper'

module MediaLibrary

  describe Library do
  
    before(:each) do
      @library = Library.new
      @expected = Array.new(10) { |i| Movie.new("New movie #{i}") }
    end
    
    it "should add a movie to the library" do
      # act
      @expected.each { |m| @library.add(m) }
      
      # assert
      @library.contents.should == @expected
    end

    it "should return top 10 movies" do
      # act
      @expected.each { |m| @library.add(m) }

      # act & assert
      @library.top_10.should == @expected
    end
    
  end
  
end