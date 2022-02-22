require 'ruby_app/book'

describe Book do
  context 'It should create book and add publisher name and date of publication' do
    book = Book.new(id: 1, publisher: 'Aku', cover_state: 'bad', publish_date: '2020-04-7')
    it 'creates new book with the given parameters'
    expect(book).to be_an_instance_of Book
  end

  it 'should check if it can be archived' do
    expect(book.id).to eq 1
    expect(book.can_be_archived).to eq False
  end
end
