class Trainer < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password_digest
  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :password, length: { minimum: 6 }
end
