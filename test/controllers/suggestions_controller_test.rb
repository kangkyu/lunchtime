require 'test_helper'

class SuggestionsControllerTest < ActionController::TestCase

  def setup
    @suggestion = suggestions(:one)
  end

  def teardown
    @suggestion = nil
  end

  test "should show suggestion" do
    get :show, id: @suggestion.id
    assert_response :success
  end

end
