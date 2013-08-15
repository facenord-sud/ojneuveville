# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  fName      :string(255)
#  lName      :string(255)
#  fixe       :integer
#  natel      :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  attr_accessible :fName, :fixe, :lName, :natel

  belongs_to :user

  #validates :fName, presence: true
  #validates :lName, presence: true
end
