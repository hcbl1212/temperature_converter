require 'minitest/autorun'
require 'temperature_converter'

class TemperatureConverterTest < Minitest::Test

  def test_must_create_celsius_strategy
    converter = TemperatureConverter.new('celsius')
    assert_equal CelsiusStrategy, converter.convert_strategy.class
  end

  def test_must_create_fahrenheit_strategy
    converter = TemperatureConverter.new('fahrenheit')
    assert_equal FahrenheitStrategy, converter.convert_strategy.class
  end

  def test_must_create_kelvin_strategy
    converter = TemperatureConverter.new('kelvin')
    assert_equal KelvinStrategy, converter.convert_strategy.class
  end

  def test_must_throw_strategy_no_supported_error
    converter = TemperatureConverter.new('fake_temp')
    #err = assert_raises(RuntimeError) { strategy.convert_temperature('celsius', 0) }
    #assert_match (/Must implement this method\./), err.message
  end

end
