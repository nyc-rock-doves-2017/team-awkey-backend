class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :liker, foreign_key: true
      t.references :photo, foreign_key: true
      
      t.timestamps
    end
  end
end
