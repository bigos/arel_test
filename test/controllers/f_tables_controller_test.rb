require 'test_helper'

class FTablesControllerTest < ActionController::TestCase
  setup do
    @f_table = f_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_table" do
    assert_difference('FTable.count') do
      post :create, f_table: { df1: @f_table.df1, df2: @f_table.df2, value: @f_table.value }
    end

    assert_redirected_to f_table_path(assigns(:f_table))
  end

  test "should show f_table" do
    get :show, id: @f_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_table
    assert_response :success
  end

  test "should update f_table" do
    patch :update, id: @f_table, f_table: { df1: @f_table.df1, df2: @f_table.df2, value: @f_table.value }
    assert_redirected_to f_table_path(assigns(:f_table))
  end

  test "should destroy f_table" do
    assert_difference('FTable.count', -1) do
      delete :destroy, id: @f_table
    end

    assert_redirected_to f_tables_path
  end
end
