class StrategyNotSupportedError < StandardError
  def initialize(msg='This strategy is currently not supported.')
    super
  end
end
