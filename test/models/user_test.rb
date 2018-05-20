require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'invalid without name' do
    user = User.new(email: 'kokopo@gmail.com')
    refute user.valid?, 'user is valid without a name'
    assert_not_nil user.errors[:name], 'no validation error for name present'
  end

  test 'invalid without email' do
    user = User.new(name: 'kokopo')
    refute user.valid?
    assert_not_nil user.errors[:email]
  end
end