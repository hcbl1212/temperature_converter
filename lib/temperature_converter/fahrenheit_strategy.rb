require 'temperature_converter/strategy_interface'
class FahrenheitStrategy < StrategyInterface

  def convert_temperature(convert_to, temperature)
    base_calculation = (temperature - 32) * 5.0 / 9.0
    case convert_to
    when 'celsius'
     base_calculation 
    when 'kelvin'
      base_calculation + 273.15
    when 'fahrenheit'
      temperature
    else
      raise RuntimeError, 'This scale is currently not supported'
    end
  end

end
