require 'rails_helper'

describe User do
  it { should have_many :questions }
  it { should have_many :answers }

  it 'converts name to lowercase' do
    user = FactoryBot.create(:user)
    
    user.email.should eq 'bob@bob.com'
  end
end
