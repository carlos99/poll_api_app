class User < ActiveRecord::Base

  validates :email, presence: true, email: true, uniqueness: true
  validates :name, presence: true
  validates :provider, presence: true
  validates :uid, presence: true

  has_many :tokens

  def self.from_omniauth(data)
    #Get data hash
    User.where(provider: data[:provider], uid: data[:uid]).first_or_create do |user|
      user.email = data[:info][:email]
      user.name = data[:info][:name]
    end
  end
end
