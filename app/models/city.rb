class City < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '北海道' },
    { id: 3, name: '青森' },
  ]



  include ActiveHash::Associations
  has_many :posts


  end