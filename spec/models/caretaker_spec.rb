require 'rails_helper'

RSpec.describe Caretaker do
    describe "associations" do
    it { should belong_to :employee }
    it { should belong_to :animal }
  end
end
