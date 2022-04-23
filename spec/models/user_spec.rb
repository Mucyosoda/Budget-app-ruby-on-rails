require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the email for a user' do
    user = User.create(email: 'soda@gmail.com')
    expect(user.email).to eq 'soda@gmail.com'
  end
end
