class User < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 50 }
  validates :lastname,  presence: true
  validates :permissions,  presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }

end
