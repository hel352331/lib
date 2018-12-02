module ValidatorErrors
  class EmptyStringError < StandardError
    def message
      'Empty string'
    end
  end

  class UndefinedClassError < StandardError
    def message
      'Undefined class'
    end
  end
end
