require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def valid_attributes
    {
      email: 'rjohnson@email.com',
      password: 'password',
      password_confirmation: 'password'
    }
  end

  test "user is valid with email and password" do
    user = User.new(valid_attributes)

    assert user.valid?
  end

  test "user is not valid without a email" do
    user = User.new(email: "", password: "pw", password_confirmation: "pw")

    refute user.valid?
  end

  test "cannot sign up with a duplicate email address" do
    2.times { User.new(valid_attributes) }

    assert 1, User.where(email: "rjohnson@email.com").count
  end
end
