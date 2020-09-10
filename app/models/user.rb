class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    'valid_email_2/email': true,
                    uniqueness: { case_sensitive: false }
end
