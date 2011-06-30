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
      # arrange make the factory method to return the critic
      critic = double("critic")

      MovieCritic.stub!(:create).and_return(critic)
      
      @expected.each { |m| @library.add(m) }

      @expected.first(5).each { |m| critic.stub!(:rank).with(m).and_return(10) }
      @expected.last(5).each { |m| critic.stub!(:rank).with(m).and_return(1) }
      
      # act & assert
      @library.top(5).should == @expected.first(5)
    end
    
  end
  
end