class Post < ApplicationRecord
	belongs_to :category
	belongs_to :admin
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
		length: { maximum: 140 }
	validates :body, presence: true

	def self.search(search)
		where("title LIKE ? OR body LIKE ?", "%#{search}%", "%#{search}%")
	end
end
