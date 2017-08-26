require 'test_helper'

class SalonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salon = salons(:one)
  end

  test "should get index" do
    get salons_url, as: :json
    assert_response :success
  end

  test "should create salon" do
    assert_difference('Salon.count') do
      post salons_url, params: { publicacion: { numero: @salon.numero, edificio: @salon.edificio, capacidad: @salon.capacidad } }, as: :json
    end

    assert_response 201
  end

  test "should show salon" do
    get salon_url(@salon), as: :json
    assert_response :success
  end

  test "should update salon" do
    patch salon_url(@salon), params: { salon: { numero: @salon.numero, edificio: @salon.edificio, capacidad: @salon.capacidad } }, as: :json
    assert_response 200
  end

  test "should destroy salon" do
    assert_difference('Salon.count', -1) do
      delete salon_url(@salon), as: :json
    end

    assert_response 204
  end
end
