class Employee < ActiveRecord::Base
  has_many :caretakers
  has_many :animals, through: :caretakers
end
