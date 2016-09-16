class User < ActiveRecord::Base
  has_many :tokens

  validates :email, presence: true, email: true
  validates :name, presence: true
  validates :provider, presence: true
  validates :uid, presence: true
end
