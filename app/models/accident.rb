class Accident < ApplicationRecord
    has_many :accident_types
    has_many :damage_levels
    belongs_to :employee
end
