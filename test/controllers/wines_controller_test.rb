require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine = wines(:one)
  end

  test 'get index' do
    get '/wines'
    assert_response :success
  end

  test 'get wine' do
    get '/wines' + @wine.id.to_s
    assert_response :success
  end
end
