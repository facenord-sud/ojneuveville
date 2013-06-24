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

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
