class Tennis
  SCORE = {
    0 => 'love',
    1 => '15',
    2 => '30',
    4 => '40'
  }.freeze

  def initialize
    @hash = Hash.new(0)
    @hash = {
      A: 0,
      B: 0
    }
  end

  # What is the current score ?
  def score
    if SCORE[@hash[:A]] == SCORE[@hash[:B]] && @hash[:B] <= 2
      SCORE[@hash[:B]] + ' all'
    elsif @hash[:B] == @hash[:A] && @hash[:A] == 3
      'Deuce'
    elsif  @hash[:A] > @hash[:B] && @hash[:B] >= 3
      'Advantage Server'
    elsif  @hash[:A] < @hash[:B] && @hash[:A] >= 3
      'Advantage Receiver'
    elsif @hash[:B] > @hash[:A] + 1 && @hash[:B] > 3
      'Receiver Wins'
    elsif @hash[:A] > @hash[:B] + 1 && @hash[:A] > 3
      'Server Wins'
    else
      SCORE[@hash[:A]] + ' ' + SCORE[@hash[:B]]
    end

  end

  def points_equal
    @hash[:B] == @hash[:A] && @hash[:A] >= 3
  end

  def server_wins_point
    @hash[:A] += 1
  end

  def receiver_wins_point
    @hash[:B] += 1
  end
end
