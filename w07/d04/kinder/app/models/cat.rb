# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  img_url    :string(255)
#  num_hot    :integer
#  num_not    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cat < ActiveRecord::Base
  attr_accessible :img_url, :num_hot, :num_not

end
