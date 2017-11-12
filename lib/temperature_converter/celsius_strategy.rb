require 'temperature_converter/strategy_interface'
class CelsiusStrategy < StrategyInterface

  def convert_temperature(convert_to, temperature)
    case convert_to
    when 'fahrenheit'
      temperature * 5.0 / 9.0 + 32
    when 'kelvin'
      temperature + 273.15
    when 'celsius'
      temperature
    else
      raise "This Scale is currently not supported"
    end
  end

end
