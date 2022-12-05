class ShortUrl < ApplicationRecord
  belongs_to :long_url
  belongs_to :user
end
