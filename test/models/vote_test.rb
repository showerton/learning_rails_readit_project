require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test 'votes have a story' do
    assert_equal stories(:one), votes(:one).story
  end

  test 'returns highest vote' do
    highest_id = stories(:one).votes.map(&:id).max
    assert_equal highest_id, stories(:one).votes.latest.first.id
  end

  test 'returns 5 latest votes' do
    10.times{ stories(:one).votes.create }
    assert_equal 5, stories(:one).votes.latest.size
  end
end
