require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'empty_username' do
    attrs={username:nil, password:'testpassword', email:'testemail', gender:'male'}
    user = User.new(attrs);
    assert !user.valid?
  end
  test 'successful_user' do
    attrs={username:'testuser', password:'testpassword', email:'testemail', gender:'male'}
    user = User.new(attrs);
    assert user.valid?
  end


end
