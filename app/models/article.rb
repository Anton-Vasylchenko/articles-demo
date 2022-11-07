class Article < ApplicationRecord
    include ImageUploader::Attachment(:image)

    has_rich_text :description

    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories

    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10 }
    validates :category_ids, presence: true, length: { minimum: 1 }
end