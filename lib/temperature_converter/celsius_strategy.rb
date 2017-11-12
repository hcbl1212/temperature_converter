require 'temperature_converter/strategy_interface'
class CelsiusStrategy < StrategyInterface

  def convert_temperature(convert_to, temperature)
    case convert_to
    when 'fahrenheit'
      temperature * 9.0 / 5.0 + 32
    when 'kelvin'
      temperature + 273.15
    when 'celsius'
      temperature
    else
      raise ScaleNotSupportedError
    end
  end

end
