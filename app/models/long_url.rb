class LongUrl < ApplicationRecord
  has_many :short_urls
  validates :url, presence: true, url: true, uniqueness: true
end
