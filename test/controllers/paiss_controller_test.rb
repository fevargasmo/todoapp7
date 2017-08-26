require 'test_helper'

class PaissControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pais = paiss(:one)
  end

  test "should get index" do
    get paiss_url, as: :json
    assert_response :success
  end

  test "should create pais" do
    assert_difference('Pais.count') do
      post paiss_url, params: { pais: { continente: @pais.continente, presidente: @pais.presidente, himno: @pais.himno } }, as: :json
    end

    assert_response 201
  end

  test "should show pais" do
    get pais_url(@pais), as: :json
    assert_response :success
  end

  test "should update pais" do
    patch pais_url(@pais), params: { pais: { continente: @pais.continente, presidente: @pais.presidente, himno: @pais.himno } }, as: :json
    assert_response 200
  end

  test "should destroy pais" do
    assert_difference('Pais.count', -1) do
      delete pais_url(@pais), as: :json
    end

    assert_response 204
  end
end
