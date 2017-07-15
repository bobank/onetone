require 'test_helper'

class SapatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sapat = sapats(:one)
  end

  test "should get index" do
    get sapats_url
    assert_response :success
  end

  test "should get new" do
    get new_sapat_url
    assert_response :success
  end

  test "should create sapat" do
    assert_difference('Sapat.count') do
      post sapats_url, params: { sapat: { age=integer: @sapat.age=integer, name: @sapat.name, pass: @sapat.pass } }
    end

    assert_redirected_to sapat_url(Sapat.last)
  end

  test "should show sapat" do
    get sapat_url(@sapat)
    assert_response :success
  end

  test "should get edit" do
    get edit_sapat_url(@sapat)
    assert_response :success
  end

  test "should update sapat" do
    patch sapat_url(@sapat), params: { sapat: { age=integer: @sapat.age=integer, name: @sapat.name, pass: @sapat.pass } }
    assert_redirected_to sapat_url(@sapat)
  end

  test "should destroy sapat" do
    assert_difference('Sapat.count', -1) do
      delete sapat_url(@sapat)
    end

    assert_redirected_to sapats_url
  end
end
