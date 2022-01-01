require 'test_helper'

class EpssControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eps = epss(:one)
  end

  test "should get index" do
    get epss_url
    assert_response :success
  end

  test "should get new" do
    get new_eps_url
    assert_response :success
  end

  test "should create eps" do
    assert_difference('Eps.count') do
      post epss_url, params: { eps: { aq_amt: @eps.aq_amt, aq_eps: @eps.aq_eps, ay_amt: @eps.ay_amt, ay_eps: @eps.ay_eps, name: @eps.name, q_amt: @eps.q_amt, q_eps: @eps.q_eps, quarter: @eps.quarter, y_amt: @eps.y_amt, y_eps: @eps.y_eps, year: @eps.year } }
    end

    assert_redirected_to eps_url(Eps.last)
  end

  test "should show eps" do
    get eps_url(@eps)
    assert_response :success
  end

  test "should get edit" do
    get edit_eps_url(@eps)
    assert_response :success
  end

  test "should update eps" do
    patch eps_url(@eps), params: { eps: { aq_amt: @eps.aq_amt, aq_eps: @eps.aq_eps, ay_amt: @eps.ay_amt, ay_eps: @eps.ay_eps, name: @eps.name, q_amt: @eps.q_amt, q_eps: @eps.q_eps, quarter: @eps.quarter, y_amt: @eps.y_amt, y_eps: @eps.y_eps, year: @eps.year } }
    assert_redirected_to eps_url(@eps)
  end

  test "should destroy eps" do
    assert_difference('Eps.count', -1) do
      delete eps_url(@eps)
    end

    assert_redirected_to epss_url
  end
end
