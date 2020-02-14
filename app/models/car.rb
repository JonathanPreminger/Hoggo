class Car < Assurance
  validates_presence_of :car_model
  validates_length_of :licence_points, minimum: 0, maximum: 2, allow_blank: false
  validates_length_of :registration_number, minimum: 7, maximum: 7, allow_blank: false
  validates_numericality_of :licence_points, :registration_number
end
