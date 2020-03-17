class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    Problem.create(problem_params)
    redirect_to "/"
  end

  def destroy
    problem = Problem.find(params[:id])
    problem.destroy
    redirect_to "/"
  end

  def show
    rand = Rails.env.production? ? "RANDOM()" : "RAND()"
    @problems = Problem.order(rand).limit(5)
  end

  private
  def problem_params
    params.require(:problem).permit(:question, :anser, :result)
  end

end
