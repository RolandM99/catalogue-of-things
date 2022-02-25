require_relative './app'

class Main
  def initialize
    @app = App.new
  end

  def run
    puts '*************CATALOGUE OF MY THINGS************'
    puts '             =======================          '
    puts 'Welcome to Catalogue  my things!'
    loop do
      menu
      option = gets.chomp
      break if option == '11'

      @app.get_options option
    end
    @app.create_music_album
    @app.create_games
    @app.create_author
    @app.save_books
    @app.save_labels
    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all genre (eg.: Comedy, Thriller)'
    puts '5 - List all labels (eg.: Gift, New)'
    puts '6 - List all authors (e.g. Stephen King)'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - Add Label'
    puts '11 - Exit'
  end
end

execute_app = Main.new
execute_app.run
