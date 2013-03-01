class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.references :user
      t.string :tag
      t.string :forward_to

      t.timestamps
    end
    add_index :hashtags, :user_id
  end
end
