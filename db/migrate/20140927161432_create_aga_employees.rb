class CreateAgaEmployees < ActiveRecord::Migration
  def change
    create_table :aga_employees do |t|
      t.string :name
      t.string :job_title
      t.string :job_description
      t.string :phone_number
      t.string :permalink

      t.timestamps
    end
  end
end
