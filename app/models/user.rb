class User < ActiveRecord::Base
  validates :name, :email, :provider, :uid, presence: true, email: true
end
