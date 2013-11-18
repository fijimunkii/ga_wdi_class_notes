require_relative 'spec_helper'
require_relative '../bus'

describe Bus do

  it "is empty" do
    expect(Bus.new).to be_empty
  end


end
