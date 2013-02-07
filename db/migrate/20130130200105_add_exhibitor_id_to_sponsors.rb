class AddExhibitorIdToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :exhibitor__id, :integer
  end
end
