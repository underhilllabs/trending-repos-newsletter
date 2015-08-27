class Newsletter < ActiveRecord::Base
  belongs_to :user
  has_many :newsletter_items
  accepts_nested_attributes_for :newsletter_items

  has_and_belongs_to_many :users
end
