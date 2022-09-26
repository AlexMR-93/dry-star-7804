class Doctor < ApplicationRecord
  validates_presence_of :name, :specialty, :university_attended
  belongs_to :hospital
  has_many :doctorpatients
  has_many :patients,   through: :doctorpatients
end
