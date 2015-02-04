require 'test_helper'

class SuggestionNavigateTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "see the suggestion index page" do
    get "/suggestions"
    assert_response :success
    assert assigns(:suggestions)
  end

  test "see a suggestion show page" do
  end
  
  test "can create an suggestion" do
  end
end
