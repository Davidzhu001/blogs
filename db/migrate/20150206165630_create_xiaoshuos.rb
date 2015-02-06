class CreateXiaoshuos < ActiveRecord::Migration
  def change
    create_table :xiaoshuos do |t|
      t.string :title
      t.string :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :xiaoshuos, :users
  end
end
