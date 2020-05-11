class Parcel
  attr_reader :length, :width, :height
  @@parcels = {}
  
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def self.all()
    @@parcels
  end
end