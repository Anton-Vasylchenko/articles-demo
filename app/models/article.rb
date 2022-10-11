class Article < ApplicationRecord
    include ImageUploader::Attachment(:image)

    has_rich_text :description

    belongs_to :user
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10 }
end