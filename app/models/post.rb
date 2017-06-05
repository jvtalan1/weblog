class Post < ApplicationRecord
	belongs_to :category
	belongs_to :author
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
		length: { minimum: 5 }

	def self.search(search)
		where("title LIKE ? OR body LIKE ?", "%#{search}%", "%#{search}%")
	end
end
