require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'returns the address for a group' do
    group = Group.create(name: 'hospital', description: 'money')
    expect(group.address).to eq 'hospital money'
  end
end 

