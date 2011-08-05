class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :full_name
      t.string :email
      t.string :telephone
      t.date :birthday
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
