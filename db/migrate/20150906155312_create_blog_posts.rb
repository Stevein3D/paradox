class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.integer :blog_index
      t.text :date
      t.text :title
      t.text :category
      t.text :subcategory
      t.text :text
      t.text :link
      t.text :picture

      t.timestamps null: false
    end
  end
end
