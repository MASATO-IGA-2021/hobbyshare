class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user    
    has_many :post_tags, dependent: :destroy
    has_many :tags, through: :post_tags
    has_many :messages, dependent: :destroy
    #belongs_to :room
end
