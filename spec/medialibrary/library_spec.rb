require 'spec_helper'

module MediaLibrary

  describe Library do
  
    it "should create a library" do
      library = Library.new
    end
    
    it "should add a movie to the library" do
      # arrange
      library = Library.new
      expected = (0..10).inject([]) { |movies, i| movies << Movie.new("New movie #{i}") }
      
      # act
      expected.each { |m| library.add(m) }
      
      # assert
      library.contents.should == expected
    end
    
  end
  
end