class Api::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course = Course.find(params[:id]) # find course by id
    record_key = @course.record_key # get the record key
    Course.where(record_key: record_key).destroy_all # delete all courses with the same record key
  end

  private

  def course_params
    params.require(:course).permit(
      :record_key,
      :department,
      :course_number,
      :section,
      :crn,
      :title,
      :class_type,
      :room_number,
      :has_secured_room,
      :schedule,
      :semester,
      :year,
      :credits,
      :label,
      :instructor_id,
      :special_info,
      :notes
    )
  end
end
