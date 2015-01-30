class CreateCaretakers < ActiveRecord::Migration
  def change
    create_table :caretakers do |t|
      t.integer :animal_id, null: false
      t.integer :employee_id, null: false
    end
  end
end
