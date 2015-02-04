require 'test_helper'

class SuggestionTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save suggestion without its name" do
    suggestion = Suggestion.new
    assert_not suggestion.save
  end
end
