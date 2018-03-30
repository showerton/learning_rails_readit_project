class Car
  WHEELS = 4
  @@number_of_cars = 0

  def initialize
    @@number_of_cars += 1
  end

  def self.count
    @@number_of_cars
  end

  def mileage=(x)
    @mileage = x
  end

  def mileage
    @mileage
  end
end

class StretchLimo < Car
  WHEELS = 6
  @@tvs = 1

  def turn_on_tv
    #code for this
  end
end

class Mustang < Car
end

storm = Mustang.new
storm.mileage = 40000

zippy = Car.new
zippy.mileage = 15000

if Car.count.zero?
  puts "No cars produced yet"
elsif Car.count > 10
  puts "Capacity has been reached"
else
  puts "New cars may still be produced"
end

[storm, zippy].each do |car|
  puts car.mileage
end

car_colors = {
  storm: 'white',
  zippy: 'red'
}
car_colors.each do |car, color|
  puts "#{car} is #{color}"
end
