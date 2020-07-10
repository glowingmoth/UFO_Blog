class AddPhotoToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :photo, :string
  end
end
