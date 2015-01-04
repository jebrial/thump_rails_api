require 'test_helper'

class PlayerResourcesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test "should return a list of players" do
    get "/players"
    assert_equal 200, response.status
    refute_empty response.body
  end
end
