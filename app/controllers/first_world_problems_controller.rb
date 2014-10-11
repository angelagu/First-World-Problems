class FirstWorldProblemsController < ApplicationController
  before_action :set_first_world_problem, only: [:show, :edit, :update, :destroy]

  # GET /first_world_problems
  # GET /first_world_problems.json
  def index
    @first_world_problems = FirstWorldProblem.all
  end

  # GET /first_world_problems/1
  # GET /first_world_problems/1.json
  def show
  end

  # GET /first_world_problems/new
  def new
    @first_world_problem = FirstWorldProblem.new
  end

  # GET /first_world_problems/1/edit
  def edit
  end

  # POST /first_world_problems
  # POST /first_world_problems.json
  def create
    @first_world_problem = FirstWorldProblem.new(first_world_problem_params)

    respond_to do |format|
      if @first_world_problem.save
        format.html { redirect_to @first_world_problem, notice: 'First world problem was successfully created.' }
        format.json { render :show, status: :created, location: @first_world_problem }
      else
        format.html { render :new }
        format.json { render json: @first_world_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_world_problems/1
  # PATCH/PUT /first_world_problems/1.json
  def update
    respond_to do |format|
      if @first_world_problem.update(first_world_problem_params)
        format.html { redirect_to @first_world_problem, notice: 'First world problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_world_problem }
      else
        format.html { render :edit }
        format.json { render json: @first_world_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_world_problems/1
  # DELETE /first_world_problems/1.json
  def destroy
    @first_world_problem.destroy
    respond_to do |format|
      format.html { redirect_to first_world_problems_url, notice: 'First world problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_world_problem
      @first_world_problem = FirstWorldProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_world_problem_params
      params.require(:first_world_problem).permit(:problem)
    end
end
