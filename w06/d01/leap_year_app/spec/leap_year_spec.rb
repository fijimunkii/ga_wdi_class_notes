require_relative '../leap_year'

describe 'The LeapYear class can' do
  it 'set and get a year' do
    leapyear = LeapYear.new(1986)
    expect(leapyear.year).to eq(1986)
  end
  it 'can determine if year is a leapyear' do
    leapyear = LeapYear.new(2016)
    expect(leapyear.is_leapyear?).to eq(true)
  end
  it 'can determine if year is not a leapyear' do
    leapyear = LeapYear.new(2015)
    expect(leapyear.is_leapyear?).to eq(false)
  end
  it '1997 was not a leap year' do
    leapyear = LeapYear.new(1997)
    expect(leapyear.is_leapyear?).to eq(false)
  end
  it '1996 was a leap year' do
    leapyear = LeapYear.new(1996)
    expect(leapyear.is_leapyear?).to eq(true)
  end
  it '1900 was not a leap year' do
    leapyear = LeapYear.new(1900)
    expect(leapyear.is_leapyear?).to eq(false)
  end
  it '2000 was a leap year' do
    leapyear = LeapYear.new(2000)
    expect(leapyear.is_leapyear?).to eq(true)
  end
end
