class AddFieldToAssurance < ActiveRecord::Migration[6.0]
  def change
    add_column :assurances, :building_size, :integer
    add_column :assurances, :floor_number, :integer
    add_column :assurances, :culture_type, :integer
    add_column :assurances, :dry_zone, :boolean
    add_column :assurances, :licence_points, :integer
    add_column :assurances, :car_model, :string
    add_column :assurances, :registration_number, :integer
  end
end
