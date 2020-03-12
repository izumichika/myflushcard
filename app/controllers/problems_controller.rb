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
    @problems = Problem.order("RAND()").limit(7)
  end

  private
  def problem_params
    params.require(:problem).permit(:question, :anser, :result)
  end

end
