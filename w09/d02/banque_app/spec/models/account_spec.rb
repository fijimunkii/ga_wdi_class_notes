require 'spec_helper'

describe Account do

  it "requires a name" do
    account = Account.new
    account.valid?
    expect(account.errors).to have_key(:name)
  end

  it "requies a balance" do
    account = Account.new
    account.valid?
    expect(account.errors).to have_key(:balance)
  end

  it "has a deposit method" do
    account = Account.new
    account.name = "savings"
    account.balance = 0
    account.save

    account.deposit(555)
    account.save

    expect(account.balance).to eq(555)
  end

  it "has a withdraw method" do
    account = Account.new
    account.name = "savings"
    account.balance = 0
    account.save

    account.deposit(555)
    account.save

    account.withdraw(420)
    account.save

    expect(account.balance).to eq(135)
  end

end
