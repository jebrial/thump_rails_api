require 'test_helper'

class PlayerResourcesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test "should return a list of players" do
    get "/players"
    assert_equal 200, response.status
    refute_empty response.body
  end

  test "should create a new player" do
    post "/players", { player: { facebookid: "1234567890",
                                      name: "Gregor Reptile",
                                      first_name: "Gregor",
                                      last_name: "Reptile",
                                      gender: :male,
                                      age: "36",
                                      location: "Saint Louis",
                                      likes_men: 0,
                                      likes_women: 1 }
                                }.to_json,
                                { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
  end

  # test "should return a list of players based on a specific player's preference" do
  #   get "/pla"
end
