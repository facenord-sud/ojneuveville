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
#  contact_id      :integer
#

# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :role_ids, :event_ids, :contact_attributes, :reason, :roles

  ROLES = %w[admin super-admin ojien]

  has_secure_password
  has_bit_mask :roles, ROLES

  before_save { email.downcase! }
  before_save :create_remember_token
  has_and_belongs_to_many :events
  has_one :contact, inverse_of: :user
  accepts_nested_attributes_for :contact


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5 }, :on => :create
  validates :reason, presence: true, on: :create
  validates :password_confirmation, presence: true, :on => :create
  after_validation { self.errors.messages.delete(:password_digest) }

  rails_admin do
    edit do
      field :name
      field :roles, :enum do
        enum do
          User::ROLES
        end
      end
      include_all_fields
      exclude_fields :bit_mask, :password_digest, :remember_token
    end
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
