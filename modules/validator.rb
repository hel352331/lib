# frozen_string_literal: true

module Validator
  include ValidatorErrors

  def check_class(entity, klass)
    raise UndefinedClassError unless entity.is_a?(klass)
  end

  def check_empty(entity)
    raise EmptyStringError if entity.empty?
  end
end
