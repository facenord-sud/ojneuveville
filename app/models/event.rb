class Event < ActiveRecord::Base
  attr_accessible :delay, :description, :ending_at, :name, :place, :responsable, :starting_at
end
