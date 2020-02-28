class Text < ApplicationRecord

  validates :number, presence: true
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
