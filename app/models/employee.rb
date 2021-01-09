class Employee < ApplicationRecord
    has_many :accidents
    belongs_to :supervisor, class_name: "Employee",optional: true 
end
