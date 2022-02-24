require_relative '../author'

describe Author do
  context 'It should create a Author instance with first name and last name' do
    author = Author.new('Zachee', 'ishimwe')
    it 'creates new game with the given parameters' do
      expect(author).to be_an_instance_of Author
    end
    it 'should check if Author first name' do
      expect(author.first_name).to eq 'Zachee'
    end
    it 'Should check the Author last name' do
      expect(author.last_name).to eq 'ishimwe'
    end
  end
end
