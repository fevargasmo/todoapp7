require 'test_helper'

class PublicacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicacion = publicacions(:one)
  end

  test "should get index" do
    get publicacions_url, as: :json
    assert_response :success
  end

  test "should create publicacion" do
    assert_difference('Publicacion.count') do
      post publicacions_url, params: { publicacion: { autor: @publicacion.autor, cuerpo: @publicacion.cuerpo, titulo: @publicacion.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show publicacion" do
    get publicacion_url(@publicacion), as: :json
    assert_response :success
  end

  test "should update publicacion" do
    patch publicacion_url(@publicacion), params: { publicacion: { autor: @publicacion.autor, cuerpo: @publicacion.cuerpo, titulo: @publicacion.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy publicacion" do
    assert_difference('Publicacion.count', -1) do
      delete publicacion_url(@publicacion), as: :json
    end

    assert_response 204
  end
end
