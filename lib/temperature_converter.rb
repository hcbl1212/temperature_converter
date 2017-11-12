class TemperatureConverter
    def initialize(convert_from)
      @convert_strategy = Object.const_get("#{convert_from.capitalize}Strategy").new
    end

    def convert_temperature(convert_to, temperature)
      @convert_strategy.convert_temperature(convert_to, temperature)
    end
end

Gem.find_files("temperature_converter/*.rb").each { |path| require path }
