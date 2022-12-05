class ShortUrl < ApplicationRecord
  belongs_to :long_url
  belongs_to :user

  validates :url, presence: true, uniqueness: true
  validates :alias, length: { maximum: 16 }, uniqueness: true, allow_blank: true
end
