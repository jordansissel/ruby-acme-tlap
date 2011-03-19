puts "Oh, a pirate's life for me. This seadog adventures for the rum!"

class Object
  alias yarrrr_to_s to_s
  alias davey_jones_inspector inspect

  def to_s
    yarrrr_to_s.gsub("ar", "arrrrrrrrr")
  end

  def inspect
    "Ahoy! " << davey_jones_inspector.gsub("ar", "arrrrrr")
  end
end

class Exception
  alias avast_me_inspect inspect
  alias shiver_me_stringies to_s

  def to_s
    shiver_me_stringies.gsub("ar", "arrrrrrrrrrrrrrrgh")
  end

  def inspect
    "Ay! She be three sheets to the wind! #{avast_me_inspect}"
  end
end

Kernel.at_exit do
  puts "Why is the rum gone?"
end
