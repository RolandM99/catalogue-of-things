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
  end
end

# puts Book.new(1,'Aku','good','2020-01-02')
