class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.references :promotion
      t.timestamps
    end
  end
end
