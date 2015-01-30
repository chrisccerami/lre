require 'rails_helper'

RSpec.describe Employee, :type => :model do
  describe "associations" do
    it { should have_many :caretakers }
    it { should have_many :animals }
  end
end
