require 'test_helper'

class CamisetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camiseta = camisetas(:one)
  end

  test "should get index" do
    get camisetas_url, as: :json
    assert_response :success
  end

  test "should create camiseta" do
    assert_difference('Camiseta.count') do
      post camisetas_url, params: { camiseta: { marca: @camiseta.marca, talla: @camiseta.talla, color: @camiseta.color } }, as: :json
    end

    assert_response 201
  end

  test "should show camiseta" do
    get camiseta_url(@camiseta), as: :json
    assert_response :success
  end

  test "should update camiseta" do
    patch camiseta_url(@camiseta), params: { camiseta: { marca: @camiseta.marca, talla: @camiseta.talla, color: @camiseta.color } }, as: :json
    assert_response 200
  end

  test "should destroy camiseta" do
    assert_difference('Camiseta.count', -1) do
      delete camiseta_url(@camiseta), as: :json
    end

    assert_response 204
  end
end
