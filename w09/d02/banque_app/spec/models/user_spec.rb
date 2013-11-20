require 'spec_helper'

describe User do

  it "requires a name, email and password" do
    user = User.new
    expect(user).to_not be_valid
    user.name = "Frank"
    expect(user).to_not be_valid
    user.email = "frank@frank.com"
    expect(user).to_not be_valid
    user.password = "kickhash"
    user.password_confirmation = "kickhash"
    expect(user).to be_valid
  end

  it "must have a password betwen 8 - 16 characters in length" do
    user = User.new
    user.password = "kickhas"
    user.password_confirmation = "kickhas"
    user.valid?
    expect(user.errors).to have_key(:password)

    user.password = "kickhash"
    user.password_confirmation = "kickhash"
    user.valid?
    expect(user.errors).to_not have_key(:password)

    user.password = "superduperlongpassword"
    user.password_confirmation = "superduperlongpassword"
    user.valid?
    expect(user.errors).to have_key(:password)
  end

  it "must have a unique username" do
    user = User.new
    user.name = "yojimminy"
    user.email = "jimmy@yosemite.org"
    user.password = "jimmytwofingaz"
    user.password_confirmation = "jimmytwofingaz"
    user.save

    user2 = User.new
    user2.name = "yojimminy"
    user2.email = "jimmy@yosemitez.org"
    user2.password = "jimmytwofingaz"
    user2.password_confirmation = "jimmytwofingaz"
    expect(user2.save).to be_false
  end

  it "must have a unique email" do
    user = User.new
    user.name = "yojimminy"
    user.email = "jimmy@yosemite.org"
    user.password = "jimmytwofingaz"
    user.password_confirmation = "jimmytwofingaz"
    user.save

    user2 = User.new
    user2.name = "yobimminiy"
    user2.email = "jimmy@yosemite.org"
    user2.password = "jimmytwofingaz"
    user2.password_confirmation = "jimmytwofingaz"
    expect(user2.save).to be_false
  end

  it "can have many accounts" do
    user = User.new
    user.name = "yojimminy"
    user.email = "jimmy@yosemite.org"
    user.password = "jimmytwofingaz"
    user.password_confirmation = "jimmytwofingaz"
    user.save

    account1 = Account.new
    account1.name = "checking"
    account1.balance = 555
    account1.user_id = user.id
    account1.save

    account2 = Account.new
    account2.name = "savings"
    account2.balance = 420
    account2.user_id = user.id
    account2.save

    accounts = Account.where(user_id: user.id)
    expect(accounts.length).to eq(2)
  end

  it "has a total_balance method that returns the total amount of money they have" do
    user = User.new
    user.name = "yojimminy"
    user.email = "jimmy@yosemite.org"
    user.password = "jimmytwofingaz"
    user.password_confirmation = "jimmytwofingaz"
    user.save

    account1 = Account.new
    account1.name = "checking"
    account1.balance = 555
    account1.user_id = user.id
    account1.save

    account2 = Account.new
    account2.name = "savings"
    account2.balance = 420
    account2.user_id = user.id
    account2.save

    expect(user.total_balance).to eq(975)
  end

  it "has a method rich? that returns true if they have more than 100k" do
    user = User.new
    user.name = "yojimminy"
    user.email = "jimmy@yosemite.org"
    user.password = "jimmytwofingaz"
    user.password_confirmation = "jimmytwofingaz"
    user.save

    account1 = Account.new
    account1.name = "checking"
    account1.balance = 555
    account1.user_id = user.id
    account1.save

    expect(user.rich?).to be_false

    account2 = Account.new
    account2.name = "checking"
    account2.balance = 5555555
    account2.user_id = user.id
    account2.save

    expect(user.rich?).to be_true
  end

end
