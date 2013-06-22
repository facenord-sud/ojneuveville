class Event < ActiveRecord::Base
  attr_accessible :delay, :description, :ending_at, :name, :place, :responsable, :starting_at, :price
  validates :name, presence: true
  validates :description, presence: true
  validates :place, presence: true
  validates :responsable, presence: true
end
