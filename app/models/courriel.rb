# == Schema Information
#
# Table name: courriels
#
#  id         :integer          not null, primary key
#  from       :string(255)
#  subject    :string(255)
#  message    :text
#  send_at    :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_send    :boolean
#

class Courriel < ActiveRecord::Base
   attr_accessible :from, :subject, :message, :is_send, :send_at
end
