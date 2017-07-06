class AddComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :body, :text
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
