class Material < ActiveRecord::Base
  attr_accessible :description, :name

  def material
		name
	end
end
