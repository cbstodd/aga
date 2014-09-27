require 'test_helper'

class AgaEmployeesControllerTest < ActionController::TestCase
  setup do
    @aga_employee = aga_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aga_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aga_employee" do
    assert_difference('AgaEmployee.count') do
      post :create, aga_employee: { content: @aga_employee.content, name: @aga_employee.name }
    end

    assert_redirected_to aga_employee_path(assigns(:aga_employee))
  end

  test "should show aga_employee" do
    get :show, id: @aga_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aga_employee
    assert_response :success
  end

  test "should update aga_employee" do
    patch :update, id: @aga_employee, aga_employee: { content: @aga_employee.content, name: @aga_employee.name }
    assert_redirected_to aga_employee_path(assigns(:aga_employee))
  end

  test "should destroy aga_employee" do
    assert_difference('AgaEmployee.count', -1) do
      delete :destroy, id: @aga_employee
    end

    assert_redirected_to aga_employees_path
  end
end
