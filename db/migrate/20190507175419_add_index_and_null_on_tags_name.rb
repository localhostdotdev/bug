class AddIndexAndNullOnTagsName < ActiveRecord::Migration[6.0]
  def change
    add_index :tags, :name
    change_column :tags, :name, :string, null: false
  end
end
