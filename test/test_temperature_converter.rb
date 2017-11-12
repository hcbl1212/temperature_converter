require 'minitest/autorun'
require 'temperature_converter_bl'

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
    err = assert_raises(StrategyNotSupportedError) { TemperatureConverter.new('fake_temp') }
    assert_match (/This strategy is currently not supported\./), err.message
  end

  def test_must_throw_invalid_temperature_error_if_temperature_is_not_numeric
    converter = TemperatureConverter.new('kelvin')
    err = assert_raises(InvalidTemperatureError) { converter.convert_temperature('celsius', 'ff33ff') }
    assert_match (/Temperature must be numeric\./), err.message
  end

  def test_must_create_celsius_strategy_and_convert_temperture_correctly
    converter = TemperatureConverter.new('celsius')
    assert_equal CelsiusStrategy, converter.convert_strategy.class
    assert_equal converter.convert_temperature('fahrenheit', 32), 89.6
  end

  def test_must_create_celsius_strategy_and_convert_float_temperture_correctly
    converter = TemperatureConverter.new('celsius')
    assert_equal CelsiusStrategy, converter.convert_strategy.class
    assert_equal converter.convert_temperature('fahrenheit', 32.9), 91.22
  end

  def test_must_create_celsius_strategy_and_convert_negativefloat_temperture_correctly
    converter = TemperatureConverter.new('celsius')
    assert_equal CelsiusStrategy, converter.convert_strategy.class
    assert_equal converter.convert_temperature('fahrenheit', -32.9).round(2), -27.22
  end

end
