class Courriel < ActiveRecord::Base
   attr_accessible :from, :subject, :message, :is_send, :send_at
end
