require_relative './item'

class Main
  def initialize
    @items = Item.new(1, '12 / 12 / 22')
  end

  def run
    puts '*************CATALOGUE OF MY THINGS************'
    puts '             =======================          '
    puts 'Welcome to Catalogue of thi!'
    loop do
      menu
      option = gets.chomp
      break if option == '14'
    end

    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all movies'
    puts '4 - List all games'
    puts '5 - List all genre (eg.: Comedy, Thriller)'
    puts '6 - List all labels (eg.: Gift, New)'
    puts '7 - List all authors (e.g. Stephen King)'
    puts "8 - List all sources (e.g. 'From a friend', 'Online shop')"
    puts '9 - List all labes'
    puts '10 - Add a book'
    puts '11 - Add a music album'
    puts '12 - Add a movie'
    puts '13 - Add a game'
    puts '14 - Exit'
  end
end

execute_app = Main.new
execute_app.run
