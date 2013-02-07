class CreateExhibitorcategories < ActiveRecord::Migration
  def change
    create_table :exhibitorcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
