require 'pry'
class MP3Importer 
  attr_accessor :path 
  def initialize(path)
    @path= path 
  end 
  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == ".." || file == "."}
   
  end 
  def import 
    self.files = Song.new_by_filename(filename)
  end 
end 