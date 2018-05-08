class AddSenatorsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :senators do |t|
      t.column :firstname, :string
      t.column :lastname, :string
      t.column :state, :string
    end
  end
end
