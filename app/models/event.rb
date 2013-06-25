# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  starting_at :datetime
#  ending_at   :datetime
#  place       :string(255)
#  delay       :datetime
#  responsable :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price       :integer          default(10)
#

class Event < ActiveRecord::Base
  attr_accessible :delay, :description, :ending_at, :name, :place, :responsable, :starting_at, :price, :user_ids, :material_ids
  
  has_and_belongs_to_many :users
  has_and_belongs_to_many :materiaux

  validates :name, presence: true, length: { maximum: 30}
  validates :description, presence: true
  validates :place, presence: true
  validates :responsable, presence: true
  validates :starting_at,
          :date => {:after => Proc.new { Time.now }}
  validates :ending_at,
  			date: {
  				after: :starting_at
  			}

 	def signUp?(user)
 		users.find_by_id(user)
 	end
end
