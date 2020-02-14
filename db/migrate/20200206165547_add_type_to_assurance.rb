class AddTypeToAssurance < ActiveRecord::Migration[6.0]
  def change
    add_column :assurances, :type, :string
  end
end
