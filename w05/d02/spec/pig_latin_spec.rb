require 'rspec'
require_relative '../pig_latin'

describe "Pig Latin Translator" do

  it "translates happy to appyhay" do
    translation = PigLatin.translate("happy")
    expect(translation).to eq("appyhay")
  end

  it "translates egg to eggway" do
    translation = PigLatin.translate("egg")
    expect(translation).to eq("eggway")
  end

  it "trainslates glove to oveglay" do
    translation = PigLatin.translate("glove")
    expect(translation).to eq("oveglay")
  end


end
