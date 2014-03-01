require 'test_helper'

class ClassIndGradesControllerTest < ActionController::TestCase
  setup do
    @class_ind_grade = class_ind_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_ind_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_ind_grade" do
    assert_difference('ClassIndGrade.count') do
      post :create, class_ind_grade: { course: @class_ind_grade.course, grade: @class_ind_grade.grade, name: @class_ind_grade.name, userID: @class_ind_grade.userID, weight: @class_ind_grade.weight }
    end

    assert_redirected_to class_ind_grade_path(assigns(:class_ind_grade))
  end

  test "should show class_ind_grade" do
    get :show, id: @class_ind_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_ind_grade
    assert_response :success
  end

  test "should update class_ind_grade" do
    put :update, id: @class_ind_grade, class_ind_grade: { course: @class_ind_grade.course, grade: @class_ind_grade.grade, name: @class_ind_grade.name, userID: @class_ind_grade.userID, weight: @class_ind_grade.weight }
    assert_redirected_to class_ind_grade_path(assigns(:class_ind_grade))
  end

  test "should destroy class_ind_grade" do
    assert_difference('ClassIndGrade.count', -1) do
      delete :destroy, id: @class_ind_grade
    end

    assert_redirected_to class_ind_grades_path
  end
end
