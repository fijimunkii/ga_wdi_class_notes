class Account < ActiveRecord::Base
  attr_accessible :balance, :name, :user_id

  belongs_to :user

  validates :name, presence: true
  validates :balance, presence: true

  def deposit(money)
    self.balance += money
  end

  def withdraw(money)
    self.balance -= money
  end

  #accounts CAN be overdrawn. hard knock life yo

end
