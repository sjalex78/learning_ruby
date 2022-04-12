# frozen_string_literal: true

require 'wedding_calculator'

RSpec.describe WeddingCalculator do
  it 'processes a half life date from a marriage date and dob of spouse 1' do
    expect(WeddingCalculator.half_life(wed: '2000-01-01', dob: '2000-01-01')).to eq '2000-01-01'
  end
  it 'processes a half life date from a marriage date and dob of spouse 1' do
    expect(WeddingCalculator.half_life(wed: '2000-01-02', dob: '2000-01-01')).to eq '2000-01-03'
  end
  it 'processes a half life date from a marriage date and dob of spouse 1' do
    expect(WeddingCalculator.half_life(wed: '2000-04-29', dob: '1978-02-21')).to eq '2022-07-06'
  end
end

# wedding = Date.iso8601('2000-04-29').strftime('%s').to_i
# sarah = Date.iso8601('1978-02-21').strftime('%s').to_i
# days = wedding - sarah
# half_life = wedding + days
# Time.at(half_life)
# 2022-07-06
# "spike"
