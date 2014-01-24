class Workout < ActiveRecord::Base

  belongs_to :user

  def distance_as_miles
    MilesConverter.new(units).convert(distance)
  end

end

class MilesConverter
  attr_reader :units
  def initialize(units = 'yards')
    @units = units
  end

  def convert(distance)
    distance * conversion(@units)
  end

  def conversion(unit)
    case unit
    when 'meters'
      return 0.000621371
    when 'yards'
      return 0.000568182
    else
      return 1
    end
  end
end
