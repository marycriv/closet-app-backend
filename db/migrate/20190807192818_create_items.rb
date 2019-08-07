class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image
      t.string :classification
      t.string :brand
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
