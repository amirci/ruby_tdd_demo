require 'spec_helper'

module MediaLibrary

  describe Library do
  
    it "should create a library" do
      library = Library.new
    end
    
    it "should add a movie to the library" do
      library = Library.new
      m1 = Movie.new('Blazing Saddles')
      library.add m1
      library.contents.should == [m1]
    end
    
  end
  
end