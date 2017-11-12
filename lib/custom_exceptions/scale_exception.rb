class ScaleNotSupportedError < StandardError
  def initialize(msg='This scale is currently not supported.')
    super
  end
end
