class SuitdesignsController < ApplicationController
  before_action :set_suitdesign, only: %i[ show edit update destroy ]

  # GET /suitdesigns or /suitdesigns.json
  def index
    @suitdesigns = Suitdesign.all
  end

  # GET /suitdesigns/1 or /suitdesigns/1.json
  def show
  end

  # GET /suitdesigns/new
  def new
    @suitdesign = Suitdesign.new
  end

  # GET /suitdesigns/1/edit
  def edit
  end

  # POST /suitdesigns or /suitdesigns.json
  def create
    @suitdesign = Suitdesign.new(suitdesign_params)

    respond_to do |format|
      if @suitdesign.save
        format.html { redirect_to @suitdesign, notice: "Suitdesign was successfully created." }
        format.json { render :show, status: :created, location: @suitdesign }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suitdesign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suitdesigns/1 or /suitdesigns/1.json
  def update
    respond_to do |format|
      if @suitdesign.update(suitdesign_params)
        format.html { redirect_to @suitdesign, notice: "Suitdesign was successfully updated." }
        format.json { render :show, status: :ok, location: @suitdesign }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suitdesign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suitdesigns/1 or /suitdesigns/1.json
  def destroy
    @suitdesign.destroy
    respond_to do |format|
      format.html { redirect_to suitdesigns_url, notice: "Suitdesign was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suitdesign
      @suitdesign = Suitdesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suitdesign_params
      params.require(:suitdesign).permit(:title, :main_image,:description)
    end
end
