class StudentclassesController < ApplicationController
  before_action :set_studentclass, only: [:show, :edit, :update, :destroy]

  # GET /studentclasses
  # GET /studentclasses.json
  def index
    @studentclasses = Studentclass.all
  end

  # GET /studentclasses/1
  # GET /studentclasses/1.json
  def show
  end

  # GET /studentclasses/new
  def new
    @studentclass = Studentclass.new
  end

  # GET /studentclasses/1/edit
  def edit
  end

  # POST /studentclasses
  # POST /studentclasses.json
  def create
    @studentclass = Studentclass.new(studentclass_params)

    respond_to do |format|
      if @studentclass.save
        format.html { redirect_to @studentclass, notice: 'Studentclass was successfully created.' }
        format.json { render :show, status: :created, location: @studentclass }
      else
        format.html { render :new }
        format.json { render json: @studentclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentclasses/1
  # PATCH/PUT /studentclasses/1.json
  def update
    respond_to do |format|
      if @studentclass.update(studentclass_params)
        format.html { redirect_to @studentclass, notice: 'Studentclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentclass }
      else
        format.html { render :edit }
        format.json { render json: @studentclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentclasses/1
  # DELETE /studentclasses/1.json
  def destroy
    @studentclass.destroy
    respond_to do |format|
      format.html { redirect_to studentclasses_url, notice: 'Studentclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentclass
      @studentclass = Studentclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentclass_params
      params.require(:studentclass).permit(:studentclass)
    end
end
