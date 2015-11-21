class AddMarketIdColumnToMedia < ActiveRecord::Migration
  def change
    add_column :media, :market_id, :integer
  end
end
