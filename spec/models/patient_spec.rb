require "rails_helper"


RSpec.describe(Patient, type: :model) do
  describe("relationships") do
    it { should(have_many(:doctorpatients)) }
    it { should(have_many(:doctors).through(:doctorpatients)) }
  end
end
