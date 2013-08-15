# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  fName      :string(255)
#  lName      :string(255)
#  fixe       :integer
#  natel      :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
