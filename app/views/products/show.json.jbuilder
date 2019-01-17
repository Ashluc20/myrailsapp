json.partial! "products/product", product: @product


# GET /products/1
# GET /products/1.json
def show
  @comments = @product.comments.order("created_at DESC")
end
