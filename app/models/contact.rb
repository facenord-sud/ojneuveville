class Contact < ActiveRecord::Base
  attr_accessible :fName, :fixe, :lName, :natel

  belongs_to :user

  validates :fName, presence: true
  validates :lName, presence: true
end
