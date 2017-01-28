class CoursecodesController < ApplicationController
  before_action :set_coursecode, only: [:show, :edit, :update, :destroy]

  # GET /coursecodes
  # GET /coursecodes.json
  def index
    @coursecodes = Coursecode.all
  end

  # GET /coursecodes/1
  # GET /coursecodes/1.json
  def show
  end

  # GET /coursecodes/new
  def new
    @coursecode = Coursecode.new
  end

  # GET /coursecodes/1/edit
  def edit
  end

  # POST /coursecodes
  # POST /coursecodes.json
  def create
    @coursecode = Coursecode.new(coursecode_params)

    respond_to do |format|
      if @coursecode.save
        format.html { redirect_to @coursecode, notice: 'Coursecode was successfully created.' }
        format.json { render :show, status: :created, location: @coursecode }
      else
        format.html { render :new }
        format.json { render json: @coursecode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursecodes/1
  # PATCH/PUT /coursecodes/1.json
  def update
    respond_to do |format|
      if @coursecode.update(coursecode_params)
        format.html { redirect_to @coursecode, notice: 'Coursecode was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursecode }
      else
        format.html { render :edit }
        format.json { render json: @coursecode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursecodes/1
  # DELETE /coursecodes/1.json
  def destroy
    @coursecode.destroy
    respond_to do |format|
      format.html { redirect_to coursecodes_url, notice: 'Coursecode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursecode
      @coursecode = Coursecode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursecode_params
      params.require(:coursecode).permit(:codename)
    end
end
