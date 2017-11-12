class AbstractMethodError < StandardError
  def initialize(msg='Must implement this method.')
    super
  end
end
