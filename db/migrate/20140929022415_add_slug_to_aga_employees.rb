class AddSlugToAgaEmployees < ActiveRecord::Migration
  def change
    add_column :aga_employees, :slug, :string
    add_index :aga_employees, :slug
  end
end
