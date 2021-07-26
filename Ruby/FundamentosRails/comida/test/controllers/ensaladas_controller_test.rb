require "test_helper"

class EnsaladasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ensalada = ensaladas(:one)
  end

  test "should get index" do
    get ensaladas_url
    assert_response :success
  end

  test "should get new" do
    get new_ensalada_url
    assert_response :success
  end

  test "should create ensalada" do
    assert_difference('Ensalada.count') do
      post ensaladas_url, params: { ensalada: { nombre: @ensalada.nombre, precio: @ensalada.precio } }
    end

    assert_redirected_to ensalada_url(Ensalada.last)
  end

  test "should show ensalada" do
    get ensalada_url(@ensalada)
    assert_response :success
  end

  test "should get edit" do
    get edit_ensalada_url(@ensalada)
    assert_response :success
  end

  test "should update ensalada" do
    patch ensalada_url(@ensalada), params: { ensalada: { nombre: @ensalada.nombre, precio: @ensalada.precio } }
    assert_redirected_to ensalada_url(@ensalada)
  end

  test "should destroy ensalada" do
    assert_difference('Ensalada.count', -1) do
      delete ensalada_url(@ensalada)
    end

    assert_redirected_to ensaladas_url
  end
end
