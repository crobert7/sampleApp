require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'must get new' do
    get signup_path
    assert_response :success
  end

end
