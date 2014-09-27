class CreateAgaEmployees < ActiveRecord::Migration
  def change
    create_table :aga_employees do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
