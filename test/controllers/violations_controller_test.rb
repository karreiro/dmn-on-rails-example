require 'test_helper'

class ViolationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @violation = violations(:one)
  end

  test "should get index" do
    get violations_url
    assert_response :success
  end

  test "should get new" do
    get new_violation_url
    assert_response :success
  end

  test "should create violation" do
    assert_difference('Violation.count') do
      post violations_url, params: { violation: { actual_speed: @violation.actual_speed, speed_limit: @violation.speed_limit, type: @violation.type } }
    end

    assert_redirected_to violation_url(Violation.last)
  end

  test "should show violation" do
    get violation_url(@violation)
    assert_response :success
  end

  test "should get edit" do
    get edit_violation_url(@violation)
    assert_response :success
  end

  test "should update violation" do
    patch violation_url(@violation), params: { violation: { actual_speed: @violation.actual_speed, speed_limit: @violation.speed_limit, type: @violation.type } }
    assert_redirected_to violation_url(@violation)
  end

  test "should destroy violation" do
    assert_difference('Violation.count', -1) do
      delete violation_url(@violation)
    end

    assert_redirected_to violations_url
  end
end
