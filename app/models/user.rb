class User < ActiveRecord::Base
  has_many :favorites
  has_many :events, through: :favorites
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/,
    message: "must be formatted like an e-mail address" }
  validates :password, length: { in: 6..20 }
  validates :role, presence: true

 def favorite?(event)
    true if self.favorites.where(event_id: event.id).length > 0
  end

end
