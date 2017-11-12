require 'temperature_converter/strategy_interface'
class KelvinStrategy < StrategyInterface

  def convert_temperature(convert_to, temperature)
    case convert_to
    when 'celsius'
      temperature - 273.15
    when 'fahrenheit'
      temperature * 9/5 - 459.67 
    when 'kelvin'
      temperature
    else
      raise RuntimeError, 'This scale is currently not supported'
    end
  end

end
