require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "race bike") }
    it "should return race bike when product has comments" do
      expect(Product.description).to eq "race bike"
    end
  end

  context "average product rating" do
    let(:user) {User.create!(email: "test@gmail.com", password: "password")}
    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    it "returns the average rating of all comments" do
      expects(Products.average_rating).to eq "3"
    end
  end

  context "is not valid without a name" do
    let(:product) {Product.new!(description:"Nice Bike") }
    it "returns not vaild without name" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end
  end
end
