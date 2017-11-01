class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_task, only: [:edit, :update, :destroy]


  # GET /tasks
  # GET /tasks.json
  # this action is no longer needed!
  # def index
  #   @tasks = Task.all
  # end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    # @task = Task.new(task_params)
    @task = Task.create(task_params)

    # respond_to do |format|
    #   if @task.save
    #     format.html { redirect_to @task, notice: 'Task was successfully created.' }
    #     format.json { render :show, status: :created, location: @task }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @task.errors, status: :unprocessable_entity }
    #   end
    # end
   end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
      @task.update(task_params)
        
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def all_tasks
      @tasks = Task.all
    end

    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description, :deadline)
    end
end
