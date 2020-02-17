require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # def setup
  #  @base_title = "Ruby on Rails Tutorial Sample App"
  # end

  test 'must get home' do
    get root_path
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

  test 'must get help' do
    get help_path
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

  test 'must get about' do
    get about_path
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

  test 'must get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

end
