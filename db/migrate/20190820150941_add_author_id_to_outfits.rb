class AddAuthorIdToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_column :outfits, :author_id, :integer
  end
end
