require_relative 'spec_helper'
require_relative '../bus'

describe Bus do

  it "is empty" do
    expect(Bus.new).to be_empty
  end

  it "can add a passenger" do
    bus = Bus.new
    bus.add("Mick Jagger")
    expect(bus).not_to be_empty
  end

  it "can take more than one passenger" do
    bus = Bus.new
    bus.add("Mick Jagger")
    bus.add("Keith Richards")
    expect(bus.size).to eq(2)
    bus.add("Charlie Watts")
    expect(bus.size).to eq(3)
  end

  it "can remove a passenger" do
    bus = Bus.new
    bus.add("Mick Jagger")
    bus.remove("Mick Jagger")
    expect(bus).to be_empty
  end

  it "can determine if it has a specific rider" do
    bus = Bus.new
    expect(bus.contains?("Mick Jagger")).to be_false
    bus.add("Mick Jagger")
    expect(bus.contains?("Mick Jagger")).to be_true
  end

  it "wont let you add the same passenger twice" do
    bus = Bus.new
    bus.add("Mick Jagger")
    bus.add("Mick Jagger")
    expect(bus.size).to eq(1)
  end

end
