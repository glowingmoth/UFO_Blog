class RemovePhotoFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :photo, :string
  end
end
