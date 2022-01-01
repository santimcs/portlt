require 'test_helper'

class QtProfitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qt_profit = qt_profits(:one)
  end

  test "should get index" do
    get qt_profits_url
    assert_response :success
  end

  test "should get new" do
    get new_qt_profit_url
    assert_response :success
  end

  test "should create qt_profit" do
    assert_difference('QtProfit.count') do
      post qt_profits_url, params: { qt_profit: { inc_amt: @qt_profit.inc_amt, inc_pct: @qt_profit.inc_pct, latest_amt: @qt_profit.latest_amt, name: @qt_profit.name, previous_amt: @qt_profit.previous_amt, quarter: @qt_profit.quarter, year: @qt_profit.year } }
    end

    assert_redirected_to qt_profit_url(QtProfit.last)
  end

  test "should show qt_profit" do
    get qt_profit_url(@qt_profit)
    assert_response :success
  end

  test "should get edit" do
    get edit_qt_profit_url(@qt_profit)
    assert_response :success
  end

  test "should update qt_profit" do
    patch qt_profit_url(@qt_profit), params: { qt_profit: { inc_amt: @qt_profit.inc_amt, inc_pct: @qt_profit.inc_pct, latest_amt: @qt_profit.latest_amt, name: @qt_profit.name, previous_amt: @qt_profit.previous_amt, quarter: @qt_profit.quarter, year: @qt_profit.year } }
    assert_redirected_to qt_profit_url(@qt_profit)
  end

  test "should destroy qt_profit" do
    assert_difference('QtProfit.count', -1) do
      delete qt_profit_url(@qt_profit)
    end

    assert_redirected_to qt_profits_url
  end
end
