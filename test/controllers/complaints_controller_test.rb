require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get complaints_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_url
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post complaints_url, params: { complaint: { call_date: @complaint.call_date, call_history: @complaint.call_history, complaint_status: @complaint.complaint_status, coustomer_address: @complaint.coustomer_address, coustomer_city: @complaint.coustomer_city, coustomer_name: @complaint.coustomer_name, coustomer_phone: @complaint.coustomer_phone, dealer: @complaint.dealer, fault: @complaint.fault, mechenic: @complaint.mechenic, product_name: @complaint.product_name, product_sr_no: @complaint.product_sr_no, purchase_date: @complaint.purchase_date, site_address: @complaint.site_address, warranty: @complaint.warranty } }
    end

    assert_redirected_to complaint_url(Complaint.last)
  end

  test "should show complaint" do
    get complaint_url(@complaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_url(@complaint)
    assert_response :success
  end

  test "should update complaint" do
    patch complaint_url(@complaint), params: { complaint: { call_date: @complaint.call_date, call_history: @complaint.call_history, complaint_status: @complaint.complaint_status, coustomer_address: @complaint.coustomer_address, coustomer_city: @complaint.coustomer_city, coustomer_name: @complaint.coustomer_name, coustomer_phone: @complaint.coustomer_phone, dealer: @complaint.dealer, fault: @complaint.fault, mechenic: @complaint.mechenic, product_name: @complaint.product_name, product_sr_no: @complaint.product_sr_no, purchase_date: @complaint.purchase_date, site_address: @complaint.site_address, warranty: @complaint.warranty } }
    assert_redirected_to complaint_url(@complaint)
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete complaint_url(@complaint)
    end

    assert_redirected_to complaints_url
  end
end
