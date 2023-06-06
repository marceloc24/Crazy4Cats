class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true
  has_many :reactions, dependent: :destroy
end
