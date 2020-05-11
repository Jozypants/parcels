require 'rspec'
require 'parcels'

describe '#Parcel' do
  describe('#Parcel') do
    it("creates a new parcel object with a length of 5") do
      parcel = Parcel.new(4, 7, 13)
      expect(parcel.length).to(eq(5))
    end
  end
end