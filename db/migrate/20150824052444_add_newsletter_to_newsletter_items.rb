class AddNewsletterToNewsletterItems < ActiveRecord::Migration
  def change
    add_column :newsletter_items, :newsletter_id, :integer
  end
end
