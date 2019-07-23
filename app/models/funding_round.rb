class FundingRound

    #   FundingRound#type
    #   - returns a **string** that is the type of funding round
    #   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
    #   FundingRound#investment
    #   - returns a **number** that is the amount invested during this funding round
    #   - This should be a float that is not a negative number.
    #   FundingRound#startup
    #   - returns the startup object for that given funding round
    #   - Once a funding round is created, I should not be able to change the startup
    #   FundingRound#venture_capitalist
    #   - returns the venture capitalist object for that given funding round
    #   - Once a funding round is created, I should not be able to change the venture capitalist
    
    attr_reader :type, :investment, :startup, :venture_capitalist

    @@all = []

    def initialize(type, investment, startup, venture_capitalist)
        @type = type
        @investment = investment
        @startup = startup
        @venture_capitalist = venture_capitalist

        @@all << self
    end

    #   FundingRound.all
    #   - returns all of the funding rounds
    def self.all
        @@all
    end

end
