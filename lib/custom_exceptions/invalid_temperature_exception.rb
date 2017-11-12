class InvalidTemperatureError < StandardError
  def initialize(msg='Temperature must be numeric.')
    super
  end
end
