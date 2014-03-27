class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :permalink
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
