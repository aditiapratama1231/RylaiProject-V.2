class AddUserIdToPosts < ActiveRecord::Migration
  def change
   	add_column :posts, :user_id, :integer
     add_reference :posts, :user, index: true, foreign_key: true
  end
end
