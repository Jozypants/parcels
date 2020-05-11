require 'rspec'
require 'parcels'

describe '#Parcel' do

  describe('#Parcel') do
    it("creates a new parcel object with a length of 5, width of 7, height of 13") do
      parcel = Parcel.new(5, 7, 13)
      expect(parcel.length).to(eq(5))
      expect(parcel.width).to(eq(7))
      expect(parcel.height).to(eq(13))
    end
  end
  describe('.all') do 
    it("it is empty at first") do
      expect(Parcel.all()).to(eq({}))
    end
  end

  describe("#save") do
    it ("saves a parcel") do
      parcel = Parcel.new(5, 7, 13)
      parcel.save()
      parcel2 = Parcel.new(3,8, 10)
      expect(Parcel.all).to(eq({parcel, parcel2}))
    end
  end
end