require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index, format: 'json'
    assert_response :success
  end

  test 'should get show' do
    object = categories(:digital_cameras)

    get :show, slug: object.slug
    assert_response :success

    get :show, id: object.id
    assert_response :success

    # TODO: check when id nil return 404 not found
  end

  test 'should get tag' do
    tag = tags(:cameras)

    get :tags, slug_tags: tag.id
    assert_response :success
  end

  test 'should get product_categories' do
    get :product_categories, category_slug: 'category-1', slug_categories: "category-2/category-3/category-4", product_slug: 'product-1'
    assert_response :success
  end
end
