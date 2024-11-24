class CreateUserInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_inputs do |t|
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
