require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it {should_not allow_value("carlos@gmail").for(:email)}
end
