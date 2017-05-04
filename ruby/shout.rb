# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end
#
# p Shout.yell_angrily("I hate the snow")
# p Shout.yelling_happily("I just won the lottery")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Politician
  include Shout
end

class Announcer
  include Shout
end

congressman = Politician.new
p congressman.yell_angrily("You lie")

cubs_radio_annoucer = Announcer.new
p cubs_radio_annoucer.yelling_happily("Home run")
