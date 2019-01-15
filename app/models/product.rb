class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  Client.average("orders_count")


  def self.search(search_term)
    if Rails.env.production?
      Product.where("name iLIKE ?", "%#{search_term}%")
    else
      Product.where("name LIKE ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
  comments.rating_desc.first
  end
end

def average_rating
  comments.average(:rating).to_f
end
