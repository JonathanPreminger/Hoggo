class CreateAssurances < ActiveRecord::Migration[6.0]
  def change
    create_table :assurances do |t|
      t.string :email
      t.string :social_reason
      t.string :siret
      t.string :siren
      t.string :naf_code
      t.integer :price_max
      t.integer :annual_incomes
      t.string :phone_number

      t.timestamps
    end
  end
end
