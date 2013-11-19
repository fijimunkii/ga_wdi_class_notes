require_relative '../lib/user'

describe User do

  it "should have a gender" do
    user = User.new(gender: "female")
    expect(user.gender).to eq("female")
  end

  it "should have a first_name" do
    user = User.new(first_name: "Consuela")
    expect(user.first_name).to eq("Consuela")
  end

  it "should have a last_name" do
    user = User.new(last_name: "Manchega")
    expect(user.last_name).to eq("Manchega")
  end

  it "should have an age" do
    user = User.new(age: 28)
    expect(user.age).to eq(28)
  end

  it "should have a marital status" do
    user = User.new(married: false)
    expect(user.married?).to eq(false)
  end

  it "should have an abilities method that returns an array abilities that unlock with age" do
    user = User.new(age: 25)
    expect(user.abilities).to eq([:drive, :vote, :rent_car])
  end

  it "should have a formal_name method" do
    user = User.new(gender: "female", first_name: "Consuela", last_name: "Manchega", age: 28, married: false)
    expect(user.formal_name).to eq("Ms. Consuela Manchega")
  end

end
