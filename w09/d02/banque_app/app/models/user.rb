class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, length: { in: 8..16 }

  has_many :accounts

  def total_balance
    balance = 0
    accounts = Account.where(user_id: self.id)
    accounts.each {|account| balance += account.balance }
    balance
  end

  def rich?
    balance = 0
    accounts = Account.where(user_id: self.id)
    accounts.each {|account| balance += account.balance }
    balance > 100000
  end
end
