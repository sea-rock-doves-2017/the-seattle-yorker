require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(username: 'sir_hamsalot', password_digest: 'password') }

  it 'has a username' do
    expect(user.username).to eq 'sir_hamsalot'
  end

  it 'has a password' do
    expect(user.password_digest).to eq 'password'
  end

end
