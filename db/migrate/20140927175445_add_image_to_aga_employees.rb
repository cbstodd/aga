class AddImageToAgaEmployees < ActiveRecord::Migration
  def change
    add_column :aga_employees, :image, :string
  end
end
