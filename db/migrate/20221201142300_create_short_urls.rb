class CreateShortUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :short_urls do |t|
      t.string :url
      t.string :alias
      t.references :long_url, null: false, foreign_key: true

      t.timestamps
    end
  end
end
