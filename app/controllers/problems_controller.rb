class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    Problem.create(problem_params)
  end

  private
  def problem_params
    params.require(:problem).permit(:question, :anser)
  end

end
