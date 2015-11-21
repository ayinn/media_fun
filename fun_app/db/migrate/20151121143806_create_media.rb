class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.string :media_type
      t.string :media_target
      t.string :media_reach
      t.string :media_url

      t.timestamps null: false
    end
  end
end
