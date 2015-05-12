class Newsletter < ActiveRecord::Base
  belongs_to :user
  has_many :repo_language

  validates_presence_of :user_id
end
