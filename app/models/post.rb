class Post < ActiveRecord::Base
	has_many :post_categories
	has_many :categories, through: :post_categories
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :url, presence: true
	validates :description, presence: true
end