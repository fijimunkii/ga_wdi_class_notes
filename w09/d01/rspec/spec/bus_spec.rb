require_relative 'spec_helper'
require_relative '../lib/bus'
require_relative '../lib/user'

describe Bus do

  it "is empty" do
    expect(Bus.new).to be_empty
  end

  it "can add a passenger" do
    bus = Bus.new
    user = User.new(name: "Mick Jagger")
    user.work
    bus.add(user)
    expect(bus).not_to be_empty
  end

  it "can take more than one passenger" do
    bus = Bus.new
    user1 = User.new(name: "Mick Jagger")
    user1.work
    user2 = User.new(name: "Keith Richards")
    user2.work
    user3 = User.new(name: "Jimmi Hendrix")
    user3.work
    bus.add(user1)
    bus.add(user2)
    expect(bus.size).to eq(2)
    bus.add(user3)
    expect(bus.size).to eq(3)
  end

  it "can remove a passenger" do
    bus = Bus.new
    user = User.new(name: "Mick Jagger")
    user.work
    bus.add(user)
    bus.remove(user)
    expect(bus).to be_empty
  end

  it "can determine if it has a specific rider" do
    bus = Bus.new
    user = User.new(name: "Mick Jagger")
    user.work
    expect(bus.contains?(user)).to be_false
    bus.add(user)
    expect(bus.contains?(user)).to be_true
  end

  it "wont let you add the same passenger twice" do
    bus = Bus.new
    user = User.new(name: "Mick Jagger")
    user.work
    bus.add(user)
    bus.add(user)
    expect(bus.size).to eq(1)
  end

  it "collects money from each passenger" do
    bus = Bus.new
    user1 = User.new(name: "Keith Richards")
    user1.work
    user2 = User.new(name: "Mick Jagger")
    user2.work
    bus.add(user1)
    bus.add(user2)
    expect(bus.money).to eq(5.0)
  end

  it "records number of fares" do
    bus = Bus.new
    user1 = User.new(name: "Mick Jagger")
    user1.work
    bus.add(user1)
    expect(bus.fares).to eq(1)
    user2 = User.new(name: "Keith Richards")
    user2.work
    bus.add(user2)
    bus.remove(user1)
    expect(bus.fares).to eq(2)
  end

  it "can only hold 20 people max" do
    bus = Bus.new
    20.times do |n|
      user = User.new(name: n)
      user.work
      bus.add(user)
    end
    expect(bus.size).to eq(20)
    bus.add('the straw')
    expect(bus.size).to eq(20)
  end

  it "'s wheels go round and round" do
    bus = Bus.new
    expect(bus.wheels).to eq("round and round")
  end

  it "has a fare of 2.50" do
    bus = Bus.new
    expect(bus.fare).to eq(2.5)
  end

end
