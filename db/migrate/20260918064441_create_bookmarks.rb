class CreateBookmarks < ActiveRecord::Migration[8.1]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :author
      t.string :publish_year

      t.timestamps
    end
  end
end
