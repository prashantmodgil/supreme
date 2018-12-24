require 'test_helper'

class MechenicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mechenic = mechenics(:one)
  end

  test "should get index" do
    get mechenics_url
    assert_response :success
  end

  test "should get new" do
    get new_mechenic_url
    assert_response :success
  end

  test "should create mechenic" do
    assert_difference('Mechenic.count') do
      post mechenics_url, params: { mechenic: { address: @mechenic.address, district: @mechenic.district, mec_name: @mechenic.mec_name, mobile_num2: @mechenic.mobile_num2, mobile_num_1: @mechenic.mobile_num_1 } }
    end

    assert_redirected_to mechenic_url(Mechenic.last)
  end

  test "should show mechenic" do
    get mechenic_url(@mechenic)
    assert_response :success
  end

  test "should get edit" do
    get edit_mechenic_url(@mechenic)
    assert_response :success
  end

  test "should update mechenic" do
    patch mechenic_url(@mechenic), params: { mechenic: { address: @mechenic.address, district: @mechenic.district, mec_name: @mechenic.mec_name, mobile_num2: @mechenic.mobile_num2, mobile_num_1: @mechenic.mobile_num_1 } }
    assert_redirected_to mechenic_url(@mechenic)
  end

  test "should destroy mechenic" do
    assert_difference('Mechenic.count', -1) do
      delete mechenic_url(@mechenic)
    end

    assert_redirected_to mechenics_url
  end
end
