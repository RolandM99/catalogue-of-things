require_relative '../book'

describe Book do
  context 'It should create book and add publisher name and date of publication' do
    book = Book.new(1, 'Aku', 'bad', '2020-04-7')
    it 'creates new book with the given parameters' do
      expect(book).to be_an_instance_of Book
    end
    it 'should check if it can be archived' do
      expect(book.can_be_archived?).to eq 'bad'
    end
  end
end
