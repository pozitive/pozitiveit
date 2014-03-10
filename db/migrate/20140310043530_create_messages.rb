class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :company
      t.string :idea
      t.text :message
      t.string :extra
      t.string :type

      t.timestamps
    end
  end
end
