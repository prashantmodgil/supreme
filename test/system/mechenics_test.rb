require "application_system_test_case"

class MechenicsTest < ApplicationSystemTestCase
  setup do
    @mechenic = mechenics(:one)
  end

  test "visiting the index" do
    visit mechenics_url
    assert_selector "h1", text: "Mechenics"
  end

  test "creating a Mechenic" do
    visit mechenics_url
    click_on "New Mechenic"

    fill_in "Address", with: @mechenic.address
    fill_in "District", with: @mechenic.district
    fill_in "Mec name", with: @mechenic.mec_name
    fill_in "Mobile num2", with: @mechenic.mobile_num2
    fill_in "Mobile num 1", with: @mechenic.mobile_num_1
    click_on "Create Mechenic"

    assert_text "Mechenic was successfully created"
    click_on "Back"
  end

  test "updating a Mechenic" do
    visit mechenics_url
    click_on "Edit", match: :first

    fill_in "Address", with: @mechenic.address
    fill_in "District", with: @mechenic.district
    fill_in "Mec name", with: @mechenic.mec_name
    fill_in "Mobile num2", with: @mechenic.mobile_num2
    fill_in "Mobile num 1", with: @mechenic.mobile_num_1
    click_on "Update Mechenic"

    assert_text "Mechenic was successfully updated"
    click_on "Back"
  end

  test "destroying a Mechenic" do
    visit mechenics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mechenic was successfully destroyed"
  end
end
