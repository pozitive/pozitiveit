class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :messages, :type, :type_website
  end
end
