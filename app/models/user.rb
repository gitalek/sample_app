class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true,
            length: { maximum: 50 }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    'valid_email_2/email': true,
                    uniqueness: true
end
