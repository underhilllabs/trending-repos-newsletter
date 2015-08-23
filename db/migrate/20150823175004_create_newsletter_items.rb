class CreateNewsletterItems < ActiveRecord::Migration
  def change
    create_table :newsletter_items do |t|
      t.integer :user_id
      t.string :repo_language
      t.string :period

      t.timestamps null: false
    end
  end
end
