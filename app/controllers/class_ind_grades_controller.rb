class ClassIndGradesController < ApplicationController
  # GET /class_ind_grades
  # GET /class_ind_grades.json
  def index
    @class_ind_grades = ClassIndGrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @class_ind_grades }
    end
  end

  # GET /class_ind_grades/1
  # GET /class_ind_grades/1.json
  def show
    @class_ind_grade = ClassIndGrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class_ind_grade }
    end
  end

  # GET /class_ind_grades/new
  # GET /class_ind_grades/new.json
  def new
    @class_ind_grade = ClassIndGrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class_ind_grade }
    end
  end

  # GET /class_ind_grades/1/edit
  def edit
    @class_ind_grade = ClassIndGrade.find(params[:id])
  end

  # POST /class_ind_grades
  # POST /class_ind_grades.json
  def create
    @class_ind_grade = ClassIndGrade.new(params[:class_ind_grade])

    respond_to do |format|
      if @class_ind_grade.save
        format.html { redirect_to @class_ind_grade, notice: 'Class ind grade was successfully created.' }
        format.json { render json: @class_ind_grade, status: :created, location: @class_ind_grade }
      else
        format.html { render action: "new" }
        format.json { render json: @class_ind_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_ind_grades/1
  # PUT /class_ind_grades/1.json
  def update
    @class_ind_grade = ClassIndGrade.find(params[:id])

    respond_to do |format|
      if @class_ind_grade.update_attributes(params[:class_ind_grade])
        format.html { redirect_to @class_ind_grade, notice: 'Class ind grade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_ind_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_ind_grades/1
  # DELETE /class_ind_grades/1.json
  def destroy
    @class_ind_grade = ClassIndGrade.find(params[:id])
    @class_ind_grade.destroy

    respond_to do |format|
      format.html { redirect_to class_ind_grades_url }
      format.json { head :no_content }
    end
  end
end
