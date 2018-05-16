require("test-unit")
require_relative("../word_scorer.rb")

class TestWordScorer < Test::Unit::TestCase
  def test_word_scorer_initialization
    word_scorer = WordScorer.new

    assert_equal(WordScorer, word_scorer.class)
  end
end
