require 'tennis'

RSpec.describe Tennis do
  it 'reports the starting score ' do
    tennis = Tennis.new
    expect(tennis.score).to eq 'love all'
  end

  it 'updates the score when server wins a point' do
    pending
    tennis = Tennis.new
    tennis.server_wins
    expect(tennis.score).to eq '15 love'
  end

  it 'updates the score when receiver wins a point' do
    pending
    tennis = Tennis.new
    tennis.receiver_wins
    expect(tennis.score).to eq 'love 15'
  end

  it 'updates the score when server wins 2 points' do
    pending
    tennis = Tennis.new
    tennis.server_wins
    tennis.server_wins
    expect(tennis.score).to eq '30 love'
  end

  it 'updates the score when server and receiver win a point each' do
    pending
    tennis = Tennis.new
    tennis.server_wins
    tennis.receiver_wins
    expect(tennis.score).to eq '15 all'
  end

  it 'deuce'
  it 'receiver wins'
  it 'server wins'
  it 'advantage receiver and or server'
end
