class Student < ActiveRecord::Base
  attr_accessible :house_id, :name
  belongs_to :house
  has_and_belongs_to_many :spells
end
