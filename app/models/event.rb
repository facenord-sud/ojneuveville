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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price       :integer          default(10)
#  user_id     :integer
#

class Event < ActiveRecord::Base
  attr_accessible :delay, :description, :ending_at, :name, :place, :responsable, :starting_at, :price, :user_ids, :material_ids, :user_id

  acts_as_commentable

  has_and_belongs_to_many :users
  has_and_belongs_to_many :materiaux
  belongs_to :user

  validates :name, presence: true, length: { maximum: 200}
  validates :description, presence: true
  validates :place, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :starting_at,
          :date => {:after => Proc.new { 6.months.ago }}
  validates :ending_at,
  			date: {
  				after: :starting_at
  			}
  validates :delay, date: {
    :date => {
      before: :starting_at
    }
  }

 	def signUp?(user)
 		users.find_by_id(user)
  end
end
