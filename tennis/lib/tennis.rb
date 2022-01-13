class Tennis
  def initialize
    @hash = Hash.new(0)
  end

  # What is the current score ?
  def score
    if @hash.empty?
      'love all'
    elsif @hash[:A] == 1 && @hash[:B] == 1
      '15 all'
    elsif @hash[:A] == 2 && @hash[:B] == 2
      '30 all'
    elsif @hash[:A] == 3 && @hash[:B] == 3
      'Deuce'
    elsif @hash[:A] >= 3 && @hash[:B] >= 3 && @hash[:A] > @hash[:B]
      'Advantage Server'
    elsif @hash[:B] >= 3 && @hash[:B] >= 3 && @hash[:A] < @hash[:B]
      'Advantage Reciever'
    elsif @hash[:A] == 1 && @hash.keys.count == 1
      '15 love'
    elsif @hash[:A] == 2 && @hash.keys.count == 1
      '30 love'
    elsif @hash[:A] == 3 && @hash.keys.count == 1
      '40 love'
    elsif @hash[:A] == 4 && @hash.keys.count == 1
      'Game To Server'
    elsif @hash[:B] == 1 && @hash.keys.count == 1
      'love 15'
    elsif @hash[:B] == 2 && @hash.keys.count == 1
      'love 30'
    elsif @hash[:B] == 3 && @hash.keys.count == 1
      '40 love'
    elsif @hash[:B] == 4 && @hash.keys.count == 1
      'Game To Receiver'
    end
  end

  def server_wins
    if @hash.empty?
      @hash[:A] = 1
    else
      @hash[:A] += 1
    end
  end

  def receiver_wins
    if @hash.empty?
      @hash[:B] = 1
    else
      @hash[:B] += 1
    end
  end
end
