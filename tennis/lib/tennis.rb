class Tennis
  SCORE = {
    0 => 'love',
    1 => '15',
    2 => '30',
    3 => '40'
  }.freeze

  def initialize
    @hash = {
      A: 0,
      B: 0
    }
  end

  # What is the current score ?
  def score
    if SCORE[@hash[:A]] == SCORE[@hash[:B]] && @hash[:B] <= 2
      SCORE[@hash[:B]] + ' all'
    elsif @hash[:B] == @hash[:A] && deuce_level_score
      'Deuce'
    elsif  (@hash[:A] - @hash[:B]).abs == 1 && deuce_level_score
      player_advantage("Advantage")
    elsif one_win_level_score
      player_advantage("Game")
    else
      SCORE[@hash[:A]] + ' ' + SCORE[@hash[:B]]
    end
  rescue NoMethodError
    pp @hash
  end

  def deuce_level_score # ie above 3
    @hash.values.min >= 3
  end

  def one_win_level_score
    @hash.values.max > 3
  end

  def player_advantage(state)
    if @hash[:A] > @hash[:B]
      "#{state} Server"
    else
      "#{state} Receiver"
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
