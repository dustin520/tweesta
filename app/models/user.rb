class User < ActiveRecord::Base

  has_secure_password

  has_many :tags

  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :first_name, presence: true
  validates :last_name, presence: true


  def set_password_reset
    self.code = SecureRandom.urlsafe_base64
    self.expires_at = 6.hours.from_now
    self.save!
  end

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate,password)
  end

end
