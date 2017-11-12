require 'minitest/autorun'
require 'temperature_converter/strategy_interface'

class StrategyInterfaceTest < Minitest::Test

  def test_must_throw_error_for_abstract_convert_method
    strategy = StrategyInterface.new
    err = assert_raises(RuntimeError) { strategy.convert_temperature('celsius', 0) }
    assert_match (/Must implement this method\./), err.message
  end

end
