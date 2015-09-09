class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
