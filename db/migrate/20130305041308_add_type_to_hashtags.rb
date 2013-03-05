class AddTypeToHashtags < ActiveRecord::Migration
  def change
    add_column :hashtags, :type, :string
  end
end
