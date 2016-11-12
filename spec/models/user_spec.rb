require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should allow_value("carlos@gmail.com").for(:email)}
  it {should_not allow_value("carlos@gmail").for(:email)}
  it { should validate_presence_of(:provider) }
  it { should validate_presence_of(:uid) }
  it { should have_many(:tokens) }

  it "Should create a new user if the uid and provider doesn't exist" do
  	expect{
  		User.from_omniauth({uid: "12345",provider: "facebook", info: {email: "u@mail.com", name: "Charles" } })
  	}.to change(User,:count).by(1)
	end

	it "Should find a user if the udi and provider already exist" do
		user = FactoryGirl.create(:user)
  	expect{
  		User.from_omniauth({uid: user.uid,provider: user.provider})
  	}.to change(User,:count).by(0)
	end

	it "Should return the user if the uid and provider already exist" do
		user = FactoryGirl.create(:user)
  	expect(
  		User.from_omniauth({uid: user.uid,provider: user.provider})
  	).to eq(user)
	end
end
