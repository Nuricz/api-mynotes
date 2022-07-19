class NoteCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :notes_categories, id: false do |t|
      t.belongs_to :note
      t.belongs_to :category
    end
  end
end
