require 'minitest/autorun'
require 'temperature_converter/celsius_strategy'

class CelsisuStrategyTest < Minitest::Test

  def test_must_convert_to_fahrenheit_correctly
    strategy = CelsiusStrategy.new
    assert_equal strategy.convert_temperature('fahrenheit', 32), 89.6
  end

  def test_must_convert_to_kelvin_correctly
    strategy = CelsiusStrategy.new
    assert_equal strategy.convert_temperature('kelvin', 32), 305.15
  end

  def test_must_convert_to_celsius_correctly
    strategy = CelsiusStrategy.new
    assert_equal strategy.convert_temperature('celsius', 0), 0
  end

  def test_must_throw_error_if_scale_is_not_supported
    strategy = CelsiusStrategy.new
    err = assert_raises(ScaleNotSupportedError) { strategy.convert_temperature('not_real', 0) }
    assert_match (/This scale is currently not supported/), err.message
  end

end
