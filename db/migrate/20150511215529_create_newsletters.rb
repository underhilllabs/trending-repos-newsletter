class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.references :user, index: true, foreign_key: true
      t.references :repo_language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
