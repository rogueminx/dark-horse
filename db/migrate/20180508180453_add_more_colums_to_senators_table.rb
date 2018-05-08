class AddMoreColumsToSenatorsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :senators, :full_name, :string
    add_column :senators, :party, :string
    add_column :senators, :phone, :string
    add_column :senators, :address, :string
    add_column :senators, :contact_form, :string
  end
end
