class CreatePurchaseCommodities < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_commodities do |t|
      t.references :user,      null: false, foreign_key: true
      t.references :commodity, null: false, foreign_key: true
      t.timestamps
    end
  end
end
