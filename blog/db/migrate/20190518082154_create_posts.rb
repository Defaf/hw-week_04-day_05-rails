class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :postTitle
      t.text :postText
      t.string :postAuthor

      t.timestamps
    end
  end
end
