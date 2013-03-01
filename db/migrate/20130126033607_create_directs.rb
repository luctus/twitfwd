class CreateDirects < ActiveRecord::Migration
  def change
    create_table :directs do |t|
      t.text :message
      t.string :username

      t.timestamps
    end
  end
end
