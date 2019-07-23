class VentureCapitalist

    #   VentureCapitalist#name returns a **string** that is the venture capitalist's name
    #   VentureCapitalist#total_worth returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
    attr_reader :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    #   VentureCapitalist.all returns an array of all venture capitalists
    def self.all
        @@all
    end

    #   VentureCapitalist.tres_commas_club returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)
    def self.tres_commas_club
        self.all.select {|venture_capitalist| venture_capitalist.total_worth > 1000000000}
    end

    #   VentureCapitalist#offer_contract given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    def offer_contract(startup, investment_type, amount_invested)
        FundingRound.new(investment_type, amount_invested, startup, self)
    end
    
    #   VentureCapitalist#funding_rounds returns an array of all funding rounds for that venture capitalist
    def funding_rounds
        FundingRound.all.select {|funding_round| funding_round.venture_capitalist == self}
    end
    
    #   VentureCapitalist#portfolio Returns a **unique** list of all startups this venture capitalist has funded
    def portfolio
        funding_rounds.map {|funding_round| funding_round.startup}.uniq
    end
    
    #   VentureCapitalist#biggest_investment returns the largest funding round given by this venture capitalist
    def biggest_investment
        funding_rounds.max_by {|funding_round| funding_round.investment}
    end
    
    #   VentureCapitalist#invested given a **domain string**, returns the total amount invested in that domain
    def invested(domain)
        invested_funding_rounds_for_this_domain = funding_rounds.select {|funding_round| funding_round.startup.domain == domain}
        invested_funding_rounds_for_this_domain.reduce(0) {|total, funding_round| total + funding_round.investment}
    end

end
