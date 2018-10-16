class LessonsController < ApplicationController

  def index
    @lessons = Lesson.includes(:teachers, :students, :lesson_names)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


end
