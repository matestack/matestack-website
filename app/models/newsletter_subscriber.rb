class NewsletterSubscriber < ApplicationRecord

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: true

  before_save do
    self.token = SecureRandom.hex unless self.token.present?
  end

end
