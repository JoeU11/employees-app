class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :department_id
      t.string :phone
      t.string :job_title

      t.timestamps
    end
  end
end
