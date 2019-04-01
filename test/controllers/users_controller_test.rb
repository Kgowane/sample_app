require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get new" do
    get signup_path
     # params: { user: { name: 'Steve Busemi', email: 'steve@busemi.com', password: 'pass1234', password_confirmation: 'pass1234' } }
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end
end
