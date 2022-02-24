require_relative '../book'
require 'json'
require 'date'

module BooksController
  def load_books
    file = './data_files/books.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Book.new(element['id'], element['publisher'], element['cover_state'], element['publish_date']))
      end
    end
    data
  end

  def save_books
    data = []
    @books.each do |book|
      data.push({ id: book.id, publisher: book.publisher, cover_state: book.cover_state,
                  publish_date: book.publish_date })
    end
    File.write('./data_files/books.jjson', JSON.generate(data))
  end
end
