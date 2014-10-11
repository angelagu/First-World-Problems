require 'test_helper'

class FirstWorldProblemsControllerTest < ActionController::TestCase
  setup do
    @first_world_problem = first_world_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_world_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_world_problem" do
    assert_difference('FirstWorldProblem.count') do
      post :create, first_world_problem: { problem: @first_world_problem.problem }
    end

    assert_redirected_to first_world_problem_path(assigns(:first_world_problem))
  end

  test "should show first_world_problem" do
    get :show, id: @first_world_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_world_problem
    assert_response :success
  end

  test "should update first_world_problem" do
    patch :update, id: @first_world_problem, first_world_problem: { problem: @first_world_problem.problem }
    assert_redirected_to first_world_problem_path(assigns(:first_world_problem))
  end

  test "should destroy first_world_problem" do
    assert_difference('FirstWorldProblem.count', -1) do
      delete :destroy, id: @first_world_problem
    end

    assert_redirected_to first_world_problems_path
  end
end
