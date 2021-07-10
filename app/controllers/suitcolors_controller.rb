class SuitcolorsController < ApplicationController
  before_action :set_suitcolor, only: %i[ show edit update destroy ]

  # GET /suitcolors or /suitcolors.json
  def index
    @suitcolors = Suitcolor.all
  end

  # GET /suitcolors/1 or /suitcolors/1.json
  def show
  end

  # GET /suitcolors/new
  def new
    @suitcolor = Suitcolor.new
  end

  # GET /suitcolors/1/edit
  def edit
  end

  # POST /suitcolors or /suitcolors.json
  def create
    @suitcolor = Suitcolor.new(suitcolor_params)

    respond_to do |format|
      if @suitcolor.save
        format.html { redirect_to @suitcolor, notice: "Suitcolor was successfully created." }
        format.json { render :show, status: :created, location: @suitcolor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suitcolor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suitcolors/1 or /suitcolors/1.json
  def update
    respond_to do |format|
      if @suitcolor.update(suitcolor_params)
        format.html { redirect_to @suitcolor, notice: "Suitcolor was successfully updated." }
        format.json { render :show, status: :ok, location: @suitcolor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suitcolor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suitcolors/1 or /suitcolors/1.json
  def destroy
    @suitcolor.destroy
    respond_to do |format|
      format.html { redirect_to suitcolors_url, notice: "Suitcolor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suitcolor
      @suitcolor = Suitcolor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suitcolor_params
      params.require(:suitcolor).permit(:title, :main_image, :description)
    end
end
