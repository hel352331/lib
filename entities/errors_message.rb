module ValidatorErrors
  class EmptyStringError < StandardError
    def initialize
      super('Empty string')
    end
  end

  class UndefinedClassError < StandardError
    def initialize
      super('Undefined class')
    end
  end
end
