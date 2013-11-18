require_relative 'spec_helper'
require_relative '../lib/user'
require_relative '../lib/bus'

describe User do
  it "has a name" do
    user = User.new(name: "Mick Jagger")
    expect(user.name).to eq("Mick Jagger")
  end

  it "has a starting balance of 0" do
    user = User.new(name: "Mick Jagger")
    expect(user.balance).to eq(0)
  end

  context "works for money" do
    it "has a job" do
      user = User.new(name: "Mick Jagger", job: "Badass")
      expect(user.job).to eq("Badass")
    end

    it "increases its balance by 5 every time it works" do
      user = User.new(name: "Mick Jagger", job: "Badass")
      user.work
      expect(user.balance).to eq(5)
    end
  end

  it "can only ride the bus if it has enough money" do
    user = User.new(name: "Jamal")
    bus = Bus.new
    bus.add(user)
    expect(bus.size).to eq(0)
  end

  it "can ride the bus if it has enough money" do
    user = User.new(name: "Jamal")
    user.work
    bus = Bus.new
    bus.add(user)
    expect(bus.size).to eq(1)
  end

end
