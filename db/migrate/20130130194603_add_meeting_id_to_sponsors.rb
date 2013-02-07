class AddMeetingIdToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :meeting_id, :integer
  end
end
