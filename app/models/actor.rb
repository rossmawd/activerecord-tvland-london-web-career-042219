require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  def list_roles
     name = self.characters.map {|char| char.name}
     show = self.characters.map {|char| char.show.name}
     (name + show).join(" - ")
  
  end



end