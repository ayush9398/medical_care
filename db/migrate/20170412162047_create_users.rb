class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :gender
      t.string :dob
      t.string :otherinfo
      t.string :address
      t.string :phoneno

      t.timestamps
    end
  end
end
