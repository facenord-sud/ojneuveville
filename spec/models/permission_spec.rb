# == Schema Information
#
# Table name: permissions
#
#  id             :integer          not null, primary key
#  action         :string(255)
#  description    :text
#  subject_class  :string(255)
#  subject_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  all            :boolean
#  more           :string(255)
#  un_constantize :boolean
#  name           :string(255)
#

# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Permission do
  pending "add some examples to (or delete) #{__FILE__}"
end
