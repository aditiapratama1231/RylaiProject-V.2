class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
  acts_as_taggable_on :tags
end
