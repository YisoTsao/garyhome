require 'test_helper'

class HandiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handy = handies(:one)
  end

  test "should get index" do
    get handies_url
    assert_response :success
  end

  test "should get new" do
    get new_handy_url
    assert_response :success
  end

  test "should create handy" do
    assert_difference('Handy.count') do
      post handies_url, params: { handy: { approvename: @handy.approvename, capacity: @handy.capacity, desc: @handy.desc, expl: @handy.expl, explain: @handy.explain, finishdate: @handy.finishdate, ftype: @handy.ftype, fwvversion: @handy.fwvversion, item: @handy.item, owner: @handy.owner, pcbvers: @handy.pcbvers, pccitem: @handy.pccitem, prodname: @handy.prodname, prodpn: @handy.prodpn, qual: @handy.qual, read: @handy.read, receivedate: @handy.receivedate, remark: @handy.remark, rpdate: @handy.rpdate, rpname: @handy.rpname, schedule: @handy.schedule, solution: @handy.solution, startdate: @handy.startdate, testres: @handy.testres, write: @handy.write } }
    end

    assert_redirected_to handy_url(Handy.last)
  end

  test "should show handy" do
    get handy_url(@handy)
    assert_response :success
  end

  test "should get edit" do
    get edit_handy_url(@handy)
    assert_response :success
  end

  test "should update handy" do
    patch handy_url(@handy), params: { handy: { approvename: @handy.approvename, capacity: @handy.capacity, desc: @handy.desc, expl: @handy.expl, explain: @handy.explain, finishdate: @handy.finishdate, ftype: @handy.ftype, fwvversion: @handy.fwvversion, item: @handy.item, owner: @handy.owner, pcbvers: @handy.pcbvers, pccitem: @handy.pccitem, prodname: @handy.prodname, prodpn: @handy.prodpn, qual: @handy.qual, read: @handy.read, receivedate: @handy.receivedate, remark: @handy.remark, rpdate: @handy.rpdate, rpname: @handy.rpname, schedule: @handy.schedule, solution: @handy.solution, startdate: @handy.startdate, testres: @handy.testres, write: @handy.write } }
    assert_redirected_to handy_url(@handy)
  end

  test "should destroy handy" do
    assert_difference('Handy.count', -1) do
      delete handy_url(@handy)
    end

    assert_redirected_to handies_url
  end
end
