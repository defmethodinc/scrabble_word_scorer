class WordScorer

  attr_reader :word
  attr_accessor :score

  def initialize(word)
    @word = word
    @score = 0
  end

  def calculate_score
    letters.each do |letter|
      @score += letter_score(letter)
    end
    @score
  end

  private

  def letters
    @word.split('')
  end

  def letter_score(letter)
    letter_scores[letter]
  end

  def letter_scores
    {
      'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2,
      'E' => 1, 'F' => 4, 'G' => 2, 'H' => 4,
      'I' => 1, 'J' => 8, 'K' => 5, 'L' => 1,
      'M' => 3, 'N' => 1, 'O' => 1, 'P' => 3,
      'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1,
      'U' => 1, 'V' => 4, 'W' => 4, 'X' => 8,
      'Y' => 4, 'Z' => 10
    }
  end

end
