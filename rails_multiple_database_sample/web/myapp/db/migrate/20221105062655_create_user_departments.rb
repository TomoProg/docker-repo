class CreateUserDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :user_departments do |t|
      t.references :user
      t.references :department
      t.timestamps
    end
  end
end
