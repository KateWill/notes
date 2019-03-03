class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :author
      t.text :body
      t.string :send_to

      t.timestamps
    end
  end
end
