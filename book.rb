require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(name, publisher, cover_state, publish_date)
    super(id, name, publish_date)
    @id = rand(1...100)
    @name = name
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state = 'bad'
  end
end
