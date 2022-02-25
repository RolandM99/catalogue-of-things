require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_date, :publish_date

  def initialize(multiplayer, last_played_date, publish_date)
    super(id, name, publish_date)
    @last_played_date = last_played_date
    @multiplayer = multiplayer
  end

  def can_be_archived?
    current_year = Time.new.year
    last_played_at_year = Date.strptime(@last_played_date, '%Y-%m-%d').strftime('%Y').to_i
    duration = current_year - last_played_at_year
    duration > 2
  end
end
