class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
#
# can initialize a dog (FAILED - 1)
# initializes with a name (FAILED - 2)
# can't change its name (FAILED - 3)
# initializes with a nervous mood (FAILED - 4)
# can change its mood (FAILED - 5)
