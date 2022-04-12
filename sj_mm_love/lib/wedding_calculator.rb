# frozen_string_literal: true

require 'Time'

class WeddingCalculator
  # named parameters
  def self.half_life(wed:, dob:)
    # wd
    wd_seconds = Date.iso8601(wed).strftime('%s').to_i
    dob_seconds = Date.iso8601(dob).strftime('%s').to_i
    tl_seconds = wd_seconds - dob_seconds
    half_life_seconds = wd_seconds + tl_seconds
    Time.at(half_life_seconds).strftime('%Y-%m-%d')
  end
end

# puts WeddingCalculator.half_life('2000-04-29', '1978-02-21')

# wedding = Date.iso8601('2000-04-29').strftime('%s').to_i
# sarah = Date.iso8601('1978-02-21').strftime('%s').to_i
# days = wedding - sarah
# half_life = wedding + days
# Time.at(half_life)

# INPUT:
# person: Sarah Alexander: 1978-02-21
# person: Michael Milewski: 1975-10-30
# event: Marriage: 2000-04-29
# OUTPUT:
# person: Sarah Alexander: ????-??-?? half life spent in marriage
# person: Michael Milewski: ????-??-?? half life spent in marriage
