class RemovePriceMaxFromAssurance < ActiveRecord::Migration[6.0]
  def change
    remove_column :assurances, :price_max, :integer
  end
end
