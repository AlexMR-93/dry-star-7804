require "rails_helper"


RSpec.describe("Doctors Show page") do
  before(:each) do
    @hospital1 = Hospital.create!(    name: "h1")
    @doc1 = @hospital1.doctors.create!(    name: "A",     specialty: "aliving ppl",     university: "BCC")
    @doc2 = @hospital1.doctors.create!(    name: "B",     specialty: "Healing",     university: "NY")
    @patient1 = Patient.create!(    name: "Pat1",     age: 25)
    @docpat1 = Doctorpatient.create!(    doctor_id: @doc1.id,     patient_id: @patient1.id)
  end

  it("I see all of that doctor's information, name,specialty,university") do
    visit("/doctors/#{@doc1.id}")
    save_and_open_page
    expect(page).to(have_content("Name:#{@doc1.name}"))
    expect(page).to(have_content("Specialty:#{@doc1.specialty}"))
    expect(page).to(have_content("University:#{@doc1.university}"))
    expect(page).to(have_content("Works at hospital:#{@doc1.hospital.name}"))
    expect(page).to(have_content("Patients names:#{@patient1.name}"))
  end
end
