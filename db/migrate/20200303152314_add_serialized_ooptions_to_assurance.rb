class AddSerializedOoptionsToAssurance < ActiveRecord::Migration[6.0]
  def change
    add_column :assurances, :serialized_options, :text
  end
end
