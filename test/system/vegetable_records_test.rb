require "application_system_test_case"

class VegetableRecordsTest < ApplicationSystemTestCase
  setup do
    @vegetable_record = vegetable_records(:one)
  end

  test "visiting the index" do
    visit vegetable_records_url
    assert_selector "h1", text: "Vegetable Records"
  end

  test "creating a Vegetable record" do
    visit vegetable_records_url
    click_on "New Vegetable Record"

    fill_in "Body", with: @vegetable_record.body
    fill_in "Image", with: @vegetable_record.image
    fill_in "Name", with: @vegetable_record.name
    fill_in "Varaiety", with: @vegetable_record.varaiety
    click_on "Create Vegetable record"

    assert_text "Vegetable record was successfully created"
    click_on "Back"
  end

  test "updating a Vegetable record" do
    visit vegetable_records_url
    click_on "Edit", match: :first

    fill_in "Body", with: @vegetable_record.body
    fill_in "Image", with: @vegetable_record.image
    fill_in "Name", with: @vegetable_record.name
    fill_in "Varaiety", with: @vegetable_record.varaiety
    click_on "Update Vegetable record"

    assert_text "Vegetable record was successfully updated"
    click_on "Back"
  end

  test "destroying a Vegetable record" do
    visit vegetable_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vegetable record was successfully destroyed"
  end
end
