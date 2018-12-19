require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @product = products(:one)
  end 
 

  test "should get new" do
    # get products_new_url
    get new_product_url
    assert_response :success
  end

  # test "should get create" do
  #   post products_create_url
  #   assert_response :success
  # end

  test "should create a new product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { name: @product.name } }
    end
    assert_redirected_to posts_path
  end

#   # test "should get index" do
#   #   get products_url
#   #   get :index
#   #   assert_response :success
# end


end
