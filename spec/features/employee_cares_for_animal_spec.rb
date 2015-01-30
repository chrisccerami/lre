require "rails_helper"

Capybara.feature "Employee becomes a caretaker for an animal" do
  before(:each) do
    @caretaker = FactoryGirl.create(:employee)
    @animal = FactoryGirl.create(:animal)
  end

  it "can choose to care for an animal" do
    visit animal_path(@animal)
    click_on "Add caretaker"
    select @caretaker.name, from: "Employee"
    click_on "Create Caretaker"

    expect(page).to have_content "Caretaker added"
    expect(page).to have_content @caretaker.name
  end
end
