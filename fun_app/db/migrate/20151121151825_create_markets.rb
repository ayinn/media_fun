class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name, :string
      t.timestamps null: false
    end
  end
end
