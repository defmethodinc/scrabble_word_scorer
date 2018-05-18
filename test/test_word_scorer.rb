require("test-unit")
require_relative("../word_scorer.rb")

class TestWordScorer < Test::Unit::TestCase
  def setup
    @word = 'RUBY'
    @word_2 = 'JAVASCRIPT'
    @word_3 = 'PYTHON'
    @word_scorer = WordScorer.new(@word)
    @word_scorer_2 = WordScorer.new(@word_2)
    @word_scorer_3 = WordScorer.new(@word_3)
  end

  def test_word_scorer_initialization
    assert_equal(@word, @word_scorer.word)
    assert_equal(@word_2, @word_scorer_2.word)
    assert_equal(@word_3, @word_scorer_3.word)
    assert_equal(0, @word_scorer.score)
    assert_equal(0, @word_scorer_2.score)
    assert_equal(0, @word_scorer_3.score)
  end

  def test_word_scorer_calculate_score
    assert_equal(9, @word_scorer.calculate_score)
    assert_equal(24, @word_scorer_2.calculate_score)
    assert_equal(14, @word_scorer_3.calculate_score)
  end
end
