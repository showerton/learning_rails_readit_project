require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is not valid without a name" do
    s = Story.create(
      name: nil,
      link: 'https://google.com'
    )
    assert s.errors[:name].any?
    refute s.valid?
  end

  test "is not valid without a link" do
    s = Story.create(
      name: "Google Search",
      link: nil
    )
    assert s.errors[:link].any?
    refute s.valid?
  end

  test "is valid with required attributes" do
    s = Story.create(
      name: "Google",
      link: "https://google.com"
    )
    assert s.valid?
  end
end
