class Animal < ActiveRecord::Base
  has_many :caretakers
  has_many :employees, through: :caretakers
end
