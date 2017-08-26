require 'test_helper'

class CuadernosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuaderno = cuadernos(:one)
  end

  test "should get index" do
    get cuadernos_url, as: :json
    assert_response :success
  end

  test "should create cuaderno" do
    assert_difference('Cuaderno.count') do
      post cuadernos_url, params: { cuaderno: { color: @cuaderno.color, hojas: @cuaderno.hojas, marca: @cuaderno.marca } }, as: :json
    end

    assert_response 201
  end

  test "should show cuaderno" do
    get cuaderno_url(@cuaderno), as: :json
    assert_response :success
  end

  test "should update cuaderno" do
    patch cuaderno_url(@cuaderno), params: { cuaderno: { color: @cuaderno.color, hojas: @cuaderno.hojas, marca: @cuaderno.marca } }, as: :json
    assert_response 200
  end

  test "should destroy cuaderno" do
    assert_difference('Cuaderno.count', -1) do
      delete cuaderno_url(@cuaderno), as: :json
    end

    assert_response 204
  end
end
