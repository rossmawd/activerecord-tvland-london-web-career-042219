class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  #Define a method in the Character class, #say_that_thing_you_say, using a given character's catchphrase.


end