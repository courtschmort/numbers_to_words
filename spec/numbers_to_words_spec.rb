require('rspec')
require('numbers_to_words')

describe('#numbers_to_words') do
  it('returns written form of single digit number') do
    number = Number.new("1")
    expect(number.numbers_to_words()).to(eq("one"))
  end

  it('returns written form of a double digit number in the teens') do
    number = Number.new("13")
    expect(number.numbers_to_words()).to(eq("thirteen"))
  end

  it('returns written form of a double digit number in the tens') do
    number = Number.new("20")
    expect(number.numbers_to_words()).to(eq("twenty"))
  end

  it('returns written form of a double digit number') do
    number = Number.new("25")
    expect(number.numbers_to_words()).to(eq("twenty five"))
  end

  it('returns written form of a triple digit number') do
    number = Number.new("125")
    expect(number.numbers_to_words()).to(eq("one hundred twenty five"))
  end
end
