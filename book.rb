require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_states

  def initialize(id, publisher, cover_state, publish_date)
    super(id, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state = 'bad'
    # "Hello, #{super}!"
  end
end

puts book1 = Book.new(1, 'totm', 'NY', '2020-04-7')
puts book1.can_be_archived?
