require 'test_helper'

class FinalGradesControllerTest < ActionController::TestCase
  setup do
    @final_grade = final_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_grade" do
    assert_difference('FinalGrade.count') do
      post :create, final_grade: { course: @final_grade.course, coursename: @final_grade.coursename, grade: @final_grade.grade, hours: @final_grade.hours, userID: @final_grade.userID }
    end

    assert_redirected_to final_grade_path(assigns(:final_grade))
  end

  test "should show final_grade" do
    get :show, id: @final_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_grade
    assert_response :success
  end

  test "should update final_grade" do
    put :update, id: @final_grade, final_grade: { course: @final_grade.course, coursename: @final_grade.coursename, grade: @final_grade.grade, hours: @final_grade.hours, userID: @final_grade.userID }
    assert_redirected_to final_grade_path(assigns(:final_grade))
  end

  test "should destroy final_grade" do
    assert_difference('FinalGrade.count', -1) do
      delete :destroy, id: @final_grade
    end

    assert_redirected_to final_grades_path
  end
end
