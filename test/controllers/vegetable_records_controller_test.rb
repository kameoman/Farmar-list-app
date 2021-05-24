require 'test_helper'

class VegetableRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vegetable_record = vegetable_records(:one)
  end

  test "should get index" do
    get vegetable_records_url
    assert_response :success
  end

  test "should get new" do
    get new_vegetable_record_url
    assert_response :success
  end

  test "should create vegetable_record" do
    assert_difference('VegetableRecord.count') do
      post vegetable_records_url, params: { vegetable_record: { body: @vegetable_record.body, image: @vegetable_record.image, name: @vegetable_record.name, varaiety: @vegetable_record.varaiety } }
    end

    assert_redirected_to vegetable_record_url(VegetableRecord.last)
  end

  test "should show vegetable_record" do
    get vegetable_record_url(@vegetable_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_vegetable_record_url(@vegetable_record)
    assert_response :success
  end

  test "should update vegetable_record" do
    patch vegetable_record_url(@vegetable_record), params: { vegetable_record: { body: @vegetable_record.body, image: @vegetable_record.image, name: @vegetable_record.name, varaiety: @vegetable_record.varaiety } }
    assert_redirected_to vegetable_record_url(@vegetable_record)
  end

  test "should destroy vegetable_record" do
    assert_difference('VegetableRecord.count', -1) do
      delete vegetable_record_url(@vegetable_record)
    end

    assert_redirected_to vegetable_records_url
  end
end
