require 'temperature_converter/strategy_interface'
class KelvinStrategy < StrategyInterface
  
  def convert_temperature(convert_to, temperature)
    case convert_to
    when 'celsius'
      temperature - 273.15
    when 'fahrenheit'
      temperature * 5.0 / 9.0 + 32 + 273.15 
    when 'kelvin'
      temperature
    else
      raise "This Scale is currently not supported"
    end
  end

end
