# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  nick_name   :string(255)
#

# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
class Role < ActiveRecord::Base
  attr_accessible :description, :name, :permission_ids, :nick_name
  has_and_belongs_to_many :permissions
  has_and_belongs_to_many :users
  validates :description, presence: true
  validates :name,  presence: true, length: { maximum: 50 }
end
