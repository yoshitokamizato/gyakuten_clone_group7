class Question < ApplicationRecord

  validates :title, presence: true
  validates :content, presence: true

  has_many :solutions

end
