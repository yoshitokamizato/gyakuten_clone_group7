class Question < ApplicationRecord
  after_initialize :set_default_value

  validates :title, presence: true
  validates :content, presence: true

  has_many :solutions

  private

    def set_default_value

      self.views ||= 0

    end

end
