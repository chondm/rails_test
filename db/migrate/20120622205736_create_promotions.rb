class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :title
      t.string :sub_title
      t.string :subject
      t.text :description
      t.text :redemption_detail

      t.timestamps
    end
  end
end
