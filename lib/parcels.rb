class Parcel
  attr_reader :length, :width, :height, :id
  @@parcels = []
  @@package_default = 0
  
  def initialize(length, width, height, id)
    @length = length
    @width = width
    @height = height
    @id = id || @@package_default += 1
  end

  def self.all()
    @@parcels
  end

  def save
    @@parcels.push(Parcel.new(self.length, self.width, self.height, self.id))
  end

  def ==(parcel_to_compare)
    self.id.eql?(parcel_to_compare.id) 
  end

  def self.clear
    @@parcels = []
  end

  def volume_calc
    @length * @width * @height
  end

  def resize_parcel(new_length, new_width, new_height)
    @length = new_length
    @width = new_width
    @height = new_height
  end
  
end