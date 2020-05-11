require 'rspec'
require 'parcels'

describe '#Parcel' do

  before(:each) do
    Parcel.clear()
  end

  describe('#Parcel') do
    it("creates a new parcel object with a length of 5, width of 7, height of 13") do
      parcel = Parcel.new(5, 7, 13, nil)
      expect(parcel.length).to(eq(5))
      expect(parcel.width).to(eq(7))
      expect(parcel.height).to(eq(13))
    end
  end
  describe('.all') do 
    it("it is empty at first") do
      expect(Parcel.all()).to(eq([]))
    end
  end

  describe('#==') do 
   it("")do
    parcel = Parcel.new(5, 7, 13, nil)
    parcel2 = Parcel.new(5, 7, 13, nil)
    expect(parcel).to(eq(parcel))
    end
  end

  describe("#save") do
    it ("saves a parcel") do
      parcel = Parcel.new(5, 7, 13, nil)
      parcel.save()
      parcel2 = Parcel.new(3, 8, 10, nil)
      parcel2.save()
      expect(Parcel.all).to(eq([parcel, parcel2]))
    end
  end

  describe(".clear") do
    it("clears all parcels") do
      parcel = Parcel.new(5, 7, 13, nil)
      parcel.save()
      parcel2 = Parcel.new(3, 8, 10, nil)
      parcel2.save()
      Parcel.clear()
      expect(Parcel.all).to(eq([]))
    end
  end

  describe("#volume_calc") do
    it("calculates the volume of a parcel") do
      parcel = Parcel.new(5,7,13, nil)
      expect(parcel.volume_calc).to(eq(455))
    end
  end
  
  describe("#update") do
    it("updates a parcel's size") do
      parcel = Parcel.new(5,7,13, nil)
      resize_parcel(6, 8, 12)
      expect(parcel.length.width.height).to(eq(6, 8, 12))
      # expect(parcel.width).to(eq(8))
      # expect(parcel.height).to(eq(12))
    end
  end

end