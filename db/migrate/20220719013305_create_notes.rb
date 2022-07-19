class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.boolean :archive

      t.timestamps
    end
  end
end
