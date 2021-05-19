class Post < ApplicationRecord

  has_one_attached :image

  with_options presence: true do
    validates :city
    validates :explain
  end
end
