class Assurance < ApplicationRecord
    validates_presence_of :email
    validates_length_of :social_reason, minimum: 1, maximum: 20, allow_blank: false
    validates_length_of :siret, minimum: 14, maximum: 14, allow_blank: false
    validates_length_of :siren, minimum: 9, maximum: 9, allow_blank: false
    validates_length_of :naf_code, minimum: 5, maximum: 5, allow_blank: false
    validates_length_of :phone_number, minimum: 10, maximum: 10, allow_blank: false
    validates_numericality_of :siret, :siren, :annual_incomes, :phone_number
    scope :immovable, -> { where(type: "Immovable") }
    scope :agricultural, -> { where(type: "Agricultural") }
    scope :car, -> { where(type: "Car") }
    enum culture_type: [:wheat, :barley, :corn]
end
