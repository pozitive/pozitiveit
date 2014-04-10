class AddMetaTagsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :summary, :string
    add_column :blogs, :keyword, :string
  end
end
