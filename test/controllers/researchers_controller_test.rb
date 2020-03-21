require 'test_helper'

class ResearchersControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get researchers_search_url
    assert_response :success
  end

  test "should get result" do
    get researchers_result_url
    assert_response :success
  end

end
