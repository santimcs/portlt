require 'test_helper'

class YrProfitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yr_profit = yr_profits(:one)
  end

  test "should get index" do
    get yr_profits_url
    assert_response :success
  end

  test "should get new" do
    get new_yr_profit_url
    assert_response :success
  end

  test "should create yr_profit" do
    assert_difference('YrProfit.count') do
      post yr_profits_url, params: { yr_profit: { inc_amt: @yr_profit.inc_amt, inc_pct: @yr_profit.inc_pct, latest_amt: @yr_profit.latest_amt, name: @yr_profit.name, previous_amt: @yr_profit.previous_amt, quarter: @yr_profit.quarter, year: @yr_profit.year } }
    end

    assert_redirected_to yr_profit_url(YrProfit.last)
  end

  test "should show yr_profit" do
    get yr_profit_url(@yr_profit)
    assert_response :success
  end

  test "should get edit" do
    get edit_yr_profit_url(@yr_profit)
    assert_response :success
  end

  test "should update yr_profit" do
    patch yr_profit_url(@yr_profit), params: { yr_profit: { inc_amt: @yr_profit.inc_amt, inc_pct: @yr_profit.inc_pct, latest_amt: @yr_profit.latest_amt, name: @yr_profit.name, previous_amt: @yr_profit.previous_amt, quarter: @yr_profit.quarter, year: @yr_profit.year } }
    assert_redirected_to yr_profit_url(@yr_profit)
  end

  test "should destroy yr_profit" do
    assert_difference('YrProfit.count', -1) do
      delete yr_profit_url(@yr_profit)
    end

    assert_redirected_to yr_profits_url
  end
end
