require 'test_helper'

class PriceQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_quote = price_quotes(:one)
  end

  test "should get index" do
    get price_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_price_quote_url
    assert_response :success
  end

  test "should create price_quote" do
    assert_difference('PriceQuote.count') do
      post price_quotes_url, params: { price_quote: {  } }
    end

    assert_redirected_to price_quote_url(PriceQuote.last)
  end

  test "should show price_quote" do
    get price_quote_url(@price_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_quote_url(@price_quote)
    assert_response :success
  end

  test "should update price_quote" do
    patch price_quote_url(@price_quote), params: { price_quote: {  } }
    assert_redirected_to price_quote_url(@price_quote)
  end

  test "should destroy price_quote" do
    assert_difference('PriceQuote.count', -1) do
      delete price_quote_url(@price_quote)
    end

    assert_redirected_to price_quotes_url
  end
end
