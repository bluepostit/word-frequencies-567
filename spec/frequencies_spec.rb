require_relative '../frequencies'

describe '#histogram' do
  it 'should return an empty hash when given an empty string' do
    expect(histogram('')).to eq({})
  end

  it 'should return the words with their frequencies' do
    sentence = 'the quick brown fox jumps over the lazy dog'
    expected = {
      'the' => 2,
      'quick' => 1,
      'brown' => 1,
      'fox' => 1,
      'jumps' => 1,
      'over' => 1,
      'lazy' => 1,
      'dog' => 1
    }
    expect(histogram(sentence)).to eq(expected)
  end
end
