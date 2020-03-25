require 'test_helper'

class MedicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get medications_url, as: :json
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post medications_url, params: { medication: { description: @medication.description, name: @medication.name } }, as: :json
    end

    assert_response 201
  end

  test "should show medication" do
    get medication_url(@medication), as: :json
    assert_response :success
  end

  test "should update medication" do
    patch medication_url(@medication), params: { medication: { description: @medication.description, name: @medication.name } }, as: :json
    assert_response 200
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete medication_url(@medication), as: :json
    end

    assert_response 204
  end
end
