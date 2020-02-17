require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: '',
                                       email: 'invalid@example',
                                       password: 'foo',
                                       password_confirmation: 'bar' } }
    end
    assert_template 'users/new'
  end

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Rocio',
                                         email: 'rocio@umam.mx',
                                         password: 'rociomtz',
                                         password_confirmation: 'rociomtz' } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
  end

end
