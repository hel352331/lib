class Reader
  include Validator
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    validate(name, email, city, street, house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  private

  def validate(name, email, city, street, house)
    [name, email, city, street].map do |key|
      check_class(key, String)
      check_empty(key)
    end
    check_class(house, Integer)
  end
end
