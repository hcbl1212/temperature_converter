require 'minitest/autorun'
require 'temperature_converter/fahrenheit_strategy'

class FahrenheitStrategyTest < Minitest::Test

  def test_must_convert_to_celsius_correctly
    strategy = FahrenheitStrategy.new
    assert_equal strategy.convert_temperature('celsius', 32), 0
  end

  def test_must_convert_to_kelvin_correctly
    strategy = FahrenheitStrategy.new
    assert_equal strategy.convert_temperature('kelvin', 32), 273.15
  end

  def test_must_convert_to_fahrenheit_correctly
    strategy = FahrenheitStrategy.new
    assert_equal strategy.convert_temperature('fahrenheit', 0), 0
  end

  def test_must_throw_error_if_scale_is_not_supported
    strategy = FahrenheitStrategy.new
    err = assert_raises(ScaleNotSupportedError) { strategy.convert_temperature('not_real', 0) }
    assert_match (/This scale is currently not supported/), err.message
  end

end
