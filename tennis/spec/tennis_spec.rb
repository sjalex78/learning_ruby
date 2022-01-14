require 'tennis'

RSpec.describe Tennis do
  it 'reports the starting score ' do
    tennis = Tennis.new
    expect(tennis.score).to eq 'love all'
  end

  it 'updates the score when server wins a point' do
    # pending
    tennis = Tennis.new
    tennis.server_wins_point
    expect(tennis.score).to eq '15 love'
  end

  it 'updates the score when receiver wins a point' do
    # pending
    tennis = Tennis.new
    tennis.receiver_wins_point
    expect(tennis.score).to eq 'love 15'
  end

  it 'updates the score when server wins 2 points' do
    # pending
    tennis = Tennis.new
    tennis.server_wins_point
    tennis.server_wins_point
    expect(tennis.score).to eq '30 love'
  end

  it 'updates the score when server and receiver win a point each' do
    # pending
    tennis = Tennis.new
    tennis.server_wins_point
    tennis.receiver_wins_point
    expect(tennis.score).to eq '15 all'
  end

  it 'updates the score when server and receiver both win three points each' do
    tennis = Tennis.new
    # pending
    3.times{tennis.server_wins_point}
    3.times{tennis.receiver_wins_point}
    expect(tennis.score).to eq 'Deuce'
  end

  it 'receiver wins when they have three points first and/or a margin of two point from server' do
    tennis = Tennis.new
    # pending
    2.times{tennis.server_wins_point}
    4.times{tennis.receiver_wins_point}
    expect(tennis.score).to eq 'Receiver Wins'
  end

  it 'server wins when they have three points first and/or a margin of two point from receiver' do
    tennis = Tennis.new
    # pending
    4.times{tennis.server_wins_point}
    2.times{tennis.receiver_wins_point}
    expect(tennis.score).to eq 'Server Wins'
  end

  it 'both server and reciever have won three points and server a point margin of one point from receiver' do
    tennis = Tennis.new
    # pending
    4.times{tennis.server_wins_point}
    3.times{tennis.receiver_wins_point}
    expect(tennis.score).to eq 'Advantage Server'
  end

  it 'both server and reciever have won three points and server a point margin of one point from server' do
    tennis = Tennis.new
    # pending
    3.times { tennis.server_wins_point }
    4.times { tennis.receiver_wins_point }
    expect(tennis.score).to eq 'Advantage Receiver'
  end
end
