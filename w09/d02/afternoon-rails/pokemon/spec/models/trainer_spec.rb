require 'spec_helper'

describe Trainer do

  it "will not create a trainer without a valid password and password confirmation" do
    trainer = Trainer.new
    expect(trainer).to_not be_valid
  end

  it "cannot create a trainer without a valid email" do
    trainer = Trainer.new
    trainer.password = 'kickhash'
    trainer.password_confirmation = 'kickhash'
    expect(trainer).to_not be_valid
  end

  it "can create a trainer with a vaild password and password_confirmation and email" do
    trainer = Trainer.new
    trainer.password = 'kickhash'
    trainer.password_confirmation = 'kickhash'
    trainer.email = 'kick@hash.com'
    expect(trainer).to be_valid
  end

  it "will not let me create trainers with the same email" do
    trainer1 = Trainer.new
    trainer1.password = 'kickhash'
    trainer1.password_confirmation = 'kickhash'
    trainer1.email = 'kick@hash.com'
    trainer1.save

    trainer2 = Trainer.new
    trainer2.password = 'password'
    trainer2.password_confirmation = 'password'
    trainer2.email = 'kick@hash.com'
    expect(trainer2.save).to be_false
  end

  it "will ensure my password is at least 6 characters" do
    trainer1 = Trainer.new
    trainer1.password = 'short'
    trainer1.password_confirmation = 'short'
    trainer1.email = 'kick@hash.com'
    expect(trainer1).to_not be_valid

    trainer2 = Trainer.new
    trainer2.password = 'longenough'
    trainer2.password_confirmation = 'longenough'
    trainer2.email = 'areallylongemail@too.com'
    expect(trainer2).to be_valid
  end
end
