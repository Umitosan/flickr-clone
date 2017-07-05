class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.column :description, :text
      t.column :author, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end

  def up
    add_attachment :users, :avatar
  end

  def down
    remove_attachment :users, :avatar
  end

end
