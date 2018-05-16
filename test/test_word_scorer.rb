require("test-unit")
require_relative("../word_scorer.rb")

class TestWordScorer < Test::Unit::TestCase
  def test_word_scorer_initialization
    word = 'RUBY'
    score = 0

    word_scorer = WordScorer.new(word)

    assert_equal(word, word_scorer.word)
    assert_equal(score, word_scorer.score)
  end
end
