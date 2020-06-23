class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end
