class StrategyInterface

  #In ruby we really don't need this interface at all.  Ruby will throw
  #a NoMethod error if a method doesn't exist which is essentially what
  #I am doing here. For sake of sticking to the GOF implementation I will
  #use this class and method as an interface.
  def convert_temperature(convert_to, temperature)
    raise "Must implement this method."
  end

end
