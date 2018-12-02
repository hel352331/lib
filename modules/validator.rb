module Validator
  def check_empty(entity)
    raise EmptyStringError if entity.empty?
  end

  def check_class(entity, klass)
    raise UndefinedClassError unless entity.is_a?(klass)
  end
end
