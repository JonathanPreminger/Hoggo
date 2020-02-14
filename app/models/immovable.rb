class Immovable < Assurance
  validates_length_of :building_size, minimum: 0, maximum: 4, allow_blank: false
  validates_length_of :floor_number, minimum: 0, maximum: 2, allow_blank: false
  validates_numericality_of :building_size, :floor_number
end
