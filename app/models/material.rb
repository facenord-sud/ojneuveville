# == Schema Information
#
# Table name: materiaux
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Material < ActiveRecord::Base
  attr_accessible :description, :name

  def material
		name
	end
end
