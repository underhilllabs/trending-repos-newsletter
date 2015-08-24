class AddNewslettersUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :newsletters do |t|
      # t.index [:user_id, :newsletter_id]
      # t.index [:newsletter_id, :user_id]
    end
  end
end
