class CreateCamps < ActiveRecord::Migration[7.0]
  def change
    create_table :camps do |t|
      t.string :attendee_first_name
      t.string :attendee_last_name
      t.integer :attendee_age
      t.string :phone
      t.string :email
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :camp_date
      t.text :comments

      t.timestamps
    end
  end
end
