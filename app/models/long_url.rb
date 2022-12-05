class LongUrl < ApplicationRecord
  has_many :short_urls, dependent: :destroy
  validates :url, presence: true, url: true, uniqueness: true
end
