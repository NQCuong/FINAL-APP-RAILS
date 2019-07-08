class AddColumnToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :description, :string
  end

  remove_column :photos, :caption, :string

  add_column :photos, :description, :string, :after => :image
end
