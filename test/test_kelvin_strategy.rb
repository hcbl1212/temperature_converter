require 'minitest/autorun'
require 'temperature_converter/kelvin_strategy'

class KelvinStrategyTest < Minitest::Test

  def test_must_convert_to_celsius_correctly
    strategy = KelvinStrategy.new
    assert_equal strategy.convert_temperature('celsius', 0), -273.15
  end

  def test_must_convert_to_fahrenheit_correctly
    strategy = KelvinStrategy.new
    assert_equal strategy.convert_temperature('fahrenheit', 0), -459.67
  end

  def test_must_convert_to_kelvin_correctly
    strategy = KelvinStrategy.new
    assert_equal strategy.convert_temperature('kelvin', 0), 0
  end

  def test_must_throw_error_if_scale_is_not_supported
    strategy = KelvinStrategy.new
    err = assert_raises(RuntimeError) { strategy.convert_temperature('not_real', 0) }
    assert_match (/This scale is currently not supported/), err.message
  end

end
