class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :reactions, dependent: :destroy

    Kinds = %w[like dislike].freeze
    KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta"}.freeze

    has_one_attached :image

end
