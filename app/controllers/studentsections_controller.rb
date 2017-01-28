class StudentsectionsController < ApplicationController
  before_action :set_studentsection, only: [:show, :edit, :update, :destroy]

  # GET /studentsections
  # GET /studentsections.json
  def index
    @studentsections = Studentsection.all
  end

  # GET /studentsections/1
  # GET /studentsections/1.json
  def show
  end

  # GET /studentsections/new
  def new
    @studentsection = Studentsection.new
  end

  # GET /studentsections/1/edit
  def edit
  end

  # POST /studentsections
  # POST /studentsections.json
  def create
    @studentsection = Studentsection.new(studentsection_params)

    respond_to do |format|
      if @studentsection.save
        format.html { redirect_to @studentsection, notice: 'Studentsection was successfully created.' }
        format.json { render :show, status: :created, location: @studentsection }
      else
        format.html { render :new }
        format.json { render json: @studentsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentsections/1
  # PATCH/PUT /studentsections/1.json
  def update
    respond_to do |format|
      if @studentsection.update(studentsection_params)
        format.html { redirect_to @studentsection, notice: 'Studentsection was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentsection }
      else
        format.html { render :edit }
        format.json { render json: @studentsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentsections/1
  # DELETE /studentsections/1.json
  def destroy
    @studentsection.destroy
    respond_to do |format|
      format.html { redirect_to studentsections_url, notice: 'Studentsection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentsection
      @studentsection = Studentsection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentsection_params
      params.require(:studentsection).permit(:studentsection)
    end
end
