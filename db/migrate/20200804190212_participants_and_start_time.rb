class ParticipantsAndStartTime < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :participants, :Integer
    add_column :events, :start_time, :datetime
  end
end
