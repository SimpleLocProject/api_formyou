class Api::V1::CoursesController < Api::ApplicationController

  before_action :set_course, only: [:show, :update, :destroy]
  before_action :is_admin?, only: [:create, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /courses
  def index
    @courses = Course.includes(:categories)
    render json: @courses.to_json(include: [:categories, :sessions])
    # render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: api_v1_courses_url(@course)
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end
  
  def teacher_courses
    @courses = Course.where(teacher_id: current_user.id)
    render json: @courses
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:title, :description, :teacher_id)
    end
end
