class CreateBlogTranslations < ActiveRecord::Migration
  def up
    Blog.create_translation_table!({
      name: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Blog.drop_translation_table! migrate_data: true
  end
end

