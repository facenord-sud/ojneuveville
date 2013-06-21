# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  fName           :string(255)
#

# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :fName, :role_ids

  has_secure_password
  
  before_save { email.downcase! }
  before_save :create_remember_token
  has_and_belongs_to_many :roles


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
