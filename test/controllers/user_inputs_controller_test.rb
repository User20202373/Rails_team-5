require 'test_helper'

class UserInputsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_inputs_new_url
    assert_response :success
  end

  test "should get create" do
    get user_inputs_create_url
    assert_response :success
  end

end
