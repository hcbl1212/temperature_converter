require 'custom_exceptions/strategy_exception'
require 'custom_exceptions/invalid_temperature_exception'
class TemperatureConverter
    attr_reader :convert_strategy
    ACCETPTED_STRATEGY = ['celsius', 'fahrenheit', 'kelvin'].map(&:freeze).freeze 

    def initialize(convert_from)
      raise StrategyNotSupportedError unless ACCETPTED_STRATEGY.include?(convert_from)
      @convert_strategy = Object.const_get("#{convert_from.capitalize}Strategy").new
    end

    def convert_temperature(convert_to, temperature)
      raise InvalidTemperatureError unless temperature.to_s.match(/\A[-+]?\d*\.?\d+\z/)
      @convert_strategy.convert_temperature(convert_to, temperature.to_f)
    end
end

Gem.find_files("temperature_converter/*.rb").each { |path| require path }
