class Post < ApplicationRecord

  has_one_attached :image

  with_options presence: true do
    validates :city_id, numericality: { other_than: 1 }
    validates :explain
  end


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :city


  # def self.search(search)
  #   if search != ""
  #     # SQLの文法がおかしいみたい。（whereの使い方、文法）
  #     Post.where('explain like ?', "%#{search}%")
  #   else
  #     Post.all
  #   end
  # end
end
