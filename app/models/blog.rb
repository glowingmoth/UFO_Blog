class Blog < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :photo
    belongs_to :user
    validates :title, :body, presence: true
end
