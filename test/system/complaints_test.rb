require "application_system_test_case"

class ComplaintsTest < ApplicationSystemTestCase
  setup do
    @complaint = complaints(:one)
  end

  test "visiting the index" do
    visit complaints_url
    assert_selector "h1", text: "Complaints"
  end

  test "creating a Complaint" do
    visit complaints_url
    click_on "New Complaint"

    fill_in "Call date", with: @complaint.call_date
    fill_in "Call history", with: @complaint.call_history
    fill_in "Complaint status", with: @complaint.complaint_status
    fill_in "Coustomer address", with: @complaint.coustomer_address
    fill_in "Coustomer city", with: @complaint.coustomer_city
    fill_in "Coustomer name", with: @complaint.coustomer_name
    fill_in "Coustomer phone", with: @complaint.coustomer_phone
    fill_in "Dealer", with: @complaint.dealer
    fill_in "Fault", with: @complaint.fault
    fill_in "Mechenic", with: @complaint.mechenic
    fill_in "Product name", with: @complaint.product_name
    fill_in "Product sr no", with: @complaint.product_sr_no
    fill_in "Purchase date", with: @complaint.purchase_date
    fill_in "Site address", with: @complaint.site_address
    fill_in "Warranty", with: @complaint.warranty
    click_on "Create Complaint"

    assert_text "Complaint was successfully created"
    click_on "Back"
  end

  test "updating a Complaint" do
    visit complaints_url
    click_on "Edit", match: :first

    fill_in "Call date", with: @complaint.call_date
    fill_in "Call history", with: @complaint.call_history
    fill_in "Complaint status", with: @complaint.complaint_status
    fill_in "Coustomer address", with: @complaint.coustomer_address
    fill_in "Coustomer city", with: @complaint.coustomer_city
    fill_in "Coustomer name", with: @complaint.coustomer_name
    fill_in "Coustomer phone", with: @complaint.coustomer_phone
    fill_in "Dealer", with: @complaint.dealer
    fill_in "Fault", with: @complaint.fault
    fill_in "Mechenic", with: @complaint.mechenic
    fill_in "Product name", with: @complaint.product_name
    fill_in "Product sr no", with: @complaint.product_sr_no
    fill_in "Purchase date", with: @complaint.purchase_date
    fill_in "Site address", with: @complaint.site_address
    fill_in "Warranty", with: @complaint.warranty
    click_on "Update Complaint"

    assert_text "Complaint was successfully updated"
    click_on "Back"
  end

  test "destroying a Complaint" do
    visit complaints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complaint was successfully destroyed"
  end
end
