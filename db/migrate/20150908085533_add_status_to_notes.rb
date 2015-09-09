class AddStatusToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :status, :string, default: "open"
  end
end
