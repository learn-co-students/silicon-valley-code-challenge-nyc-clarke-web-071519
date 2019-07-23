require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Test Data
# Startups
airbnb = Startup.new("Airbnb", "Brian Chesky", "Home Rentals")
uber = Startup.new("Uber", "Travis Kalanick", "Ride Sharing")
spotify = Startup.new("Spotify", "Daniel Ek", "Music Streaming")
# Venture Capitalists
y_combinator = VentureCapitalist.new("Y Combinator", 80000000000)
sequoia_capital = VentureCapitalist.new("Sequoia Capital", 1000000000000)
greylock_partners = VentureCapitalist.new("Greylock Partners", 3500000000)
crunch_fund = VentureCapitalist.new("Crunch Fund", 940000000)
founders_fund = VentureCapitalist.new("Founders Fund", 3000000000)
first_round_capital = VentureCapitalist.new("First Round Capital", 70000000000)
northzone = VentureCapitalist.new("Northzone", 900000000)
wellington_partners = VentureCapitalist.new("Wellington Partners", 800000000)
# Funding Rounds
airbnb_pre_seed = FundingRound.new("Pre-Seed", 20000, airbnb, y_combinator)
airbnb_seed = FundingRound.new("Seed", 600000, airbnb, sequoia_capital)
airbnb_series_a = FundingRound.new("Series A", 7200000, airbnb, greylock_partners)
airbnb_series_b = FundingRound.new("Series B", 112000000, airbnb, crunch_fund)
airbnb_series_c = FundingRound.new("Series C", 200000000, airbnb, founders_fund)
uber_seed = FundingRound.new("Seed", 1250000, uber, first_round_capital)
uber_series_a = FundingRound.new("Series A", 11000000, uber, first_round_capital)
uber_series_b = FundingRound.new("Series B", 32000000, uber, crunch_fund)
spotify_series_a = FundingRound.new("Series A", 21640000, spotify, northzone)
spotify_series_b = FundingRound.new("Series B", 50000000, spotify, wellington_partners)
spotify_series_c = FundingRound.new("Series C", 75000000, spotify, founders_fund)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line