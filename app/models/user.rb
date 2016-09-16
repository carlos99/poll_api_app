class User < ActiveRecord::Base
  validates :name, :email, presence: true, email: true
end
