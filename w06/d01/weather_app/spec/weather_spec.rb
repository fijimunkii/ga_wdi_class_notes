require_relative '../weather'

# The core functionality of this app is to tell the user what to wear based on the weather

describe "The Weather class can" do
  it "set and get a temperature" do
    weather = Weather.new('fahrenheit')
    weather.temp = 80
    expect(weather.temp).to be(80)
  end
  it "convert celcius to fahrenheit" do
    weather = Weather.new('celcius')
    weather.temp = 20
    expect(weather.type_conv).to eq(68.0)
  end
  it "interpret hot weather" do
    weather = Weather.new('fahrenheit')
    weather.temp = 80
    expect(weather.dress).to eq('Wear short sleeves')
  end
  it 'interpret mild weather' do
    weather = Weather.new('fahrenheit')
    weather.temp = 50
    expect(weather.dress).to eq("It's getting cold, wear long sleeves")
  end
  it 'interpet cold weather' do
    weather = Weather.new('fahrenheit')
    weather.temp = 20
    expect(weather.dress).to eq('Bundle up!')
  end
  it 'interpret extremely cold weather' do
    weather = Weather.new('fahrenheit')
    weather.temp = -50
    expect(weather.dress).to eq('Stay inside!')
  end
end
