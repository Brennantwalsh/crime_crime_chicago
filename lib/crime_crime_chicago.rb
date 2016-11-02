require "crime_crime_chicago/version"

module CrimeCrimeChicago
  class Crime
    attr_reader :date, :primary_type, :description, :arrest, :id 

    def initialize(hash)
      @id = hash["id"]
      @date = hash["date"]
      @primary_type = hash["primary_type"]
      @description = hash["description"]
      @arrest = hash["arrest"]
    end

    def self.all 
      collection = []
      Unirest.get('https://data.cityofchicago.org/resource/vwwp-7yr9.json').body.each do |crime_hash|
        collection << Crime.new(crime_hash)
      end
      collection
    end

    def self.find(params_id)
      Crime.new(Unirest.get('https://data.cityofchicago.org/resource/vwwp-7yr9/#{params_id}.json').body)
    end
  end
end
