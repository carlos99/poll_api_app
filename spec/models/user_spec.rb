require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should allow_value("carlos@gmail.com").for(:email)}
  it { should validate_presence_of(:provider) }
  it { should validate_presence_of(:uid) }
  it {should_not allow_value("carlos@gmail").for(:email)}

  it { should have_many(:tokens) }
end
