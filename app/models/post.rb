class Post < ApplicationRecord
  with_options presence: true do
    validates :city
    validates :explain
  end
end
