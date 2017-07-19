require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(username: 'sir_hamsalot', password_digest: 'password') }

  it 'has a username'

  it 'has a password'

end
