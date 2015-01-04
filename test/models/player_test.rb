require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.new(facebookid: "1234567890",
                          name: "Gregor Reptile",
                          first_name: "Gregor",
                          last_name: "Reptile",
                          gender: :male,
                          age: "36",
                          location: "Saint Louis",
                          orientation: :likes_female )
  end

  test "player should exist" do
    assert @player.valid?
  end

  test "player facebookid should not be empty" do
    @player.facebookid = " "
    assert_not @player.valid?
  end

  test "player facebookid should be unique" do
    duplicate_player = @player.dup
    @player.save
    assert_not duplicate_player.valid?
  end

  test "player name should not be empty" do
    @player.name = " "
    assert_not @player.valid?
  end

  test "player gender should not be empty" do
    @player.gender = " "
    assert_not @player.valid?
  end

  test "player age should not be empty" do
    @player.age = " "
    assert_not @player.valid?
  end

  test "player location should not be empty" do
    @player.location = " "
    assert_not @player.valid?
  end

  test "player orientation should not be empty" do
    @player.orientation = " "
    assert_not @player.valid?
  end

  test "player name should not be too long" do
    @player.name = "a" * 61
    assert_not @player.valid?
  end
end
