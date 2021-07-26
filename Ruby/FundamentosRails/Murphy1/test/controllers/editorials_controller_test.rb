require "test_helper"

class EditorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @editorial = editorials(:one)
  end

  test "should get index" do
    get editorials_url
    assert_response :success
  end

  test "should get new" do
    get new_editorial_url
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post editorials_url, params: { editorial: { nombre: @editorial.nombre } }
    end

    assert_redirected_to editorial_url(Editorial.last)
  end

  test "should show editorial" do
    get editorial_url(@editorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_editorial_url(@editorial)
    assert_response :success
  end

  test "should update editorial" do
    patch editorial_url(@editorial), params: { editorial: { nombre: @editorial.nombre } }
    assert_redirected_to editorial_url(@editorial)
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete editorial_url(@editorial)
    end

    assert_redirected_to editorials_url
  end
end
