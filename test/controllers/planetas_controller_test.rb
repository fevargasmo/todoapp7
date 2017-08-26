require 'test_helper'

class PublicacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planeta = planetas(:one)
  end

  test "should get index" do
    get publicacions_url, as: :json
    assert_response :success
  end

  test "should create planeta" do
    assert_difference('Planeta.count') do
      post publicacions_url, params: { planeta: { nombre: @planeta.nombre, masa: @planeta.masa, volumen: @planeta.volumen } }, as: :json
    end

    assert_response 201
  end

  test "should show planeta" do
    get publicacion_url(@planeta), as: :json
    assert_response :success
  end

  test "should update planeta" do
    patch publicacion_url(@planeta), params: { planeta: { nombre: @planeta.nombre, masa: @planeta.masa, volumen: @planeta.volumen } }, as: :json
    assert_response 200
  end

  test "should destroy planeta" do
    assert_difference('Planeta.count', -1) do
      delete publicacion_url(@planeta), as: :json
    end

    assert_response 204
  end
end
