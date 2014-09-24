require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {FactoryGirl.create(:user)}

    it 'should validate presence of email' do
    kevin = User.create({
      :first_name => 'kevin',
      :last_name => 'chou',
      :password => '123456',
      :password_confirmation => '123456'
    })
    expect(kevin.errors.size).to eql(1)
  end

  it 'should validate presence first and last name' do
    kevin = User.create({
      :email => 'kevin@gmail.com',
      :password => '123456',
      :password_confirmation => '123456'
    })
    expect(kevin.errors.size).to eql(2)
  end
end
