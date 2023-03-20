class ShuflesController < ApplicationController
  before_action :set_shufle, only: %i[ show edit update destroy ]

  # GET /shufles or /shufles.json
  def index
    @shufles = Shufle.all
  end

  # GET /shufles/1 or /shufles/1.json
  def show
  end

  # GET /shufles/new
  def new
    @shufle = Shufle.new
  end

  # GET /shufles/1/edit
  def edit
  end

  # POST /shufles or /shufles.json
  def create
    @shufle = Shufle.new(shufle_params)

    respond_to do |format|
      if @shufle.save
        format.html { redirect_to shufle_url(@shufle), notice: "Shufle was successfully created." }
        format.json { render :show, status: :created, location: @shufle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shufle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shufles/1 or /shufles/1.json
  def update
    respond_to do |format|
      if @shufle.update(shufle_params)
        format.html { redirect_to shufle_url(@shufle), notice: "Shufle was successfully updated." }
        format.json { render :show, status: :ok, location: @shufle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shufle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shufles/1 or /shufles/1.json
  def destroy
    @shufle.destroy

    respond_to do |format|
      format.html { redirect_to shufles_url, notice: "Shufle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shufle
      @shufle = Shufle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shufle_params
      params.require(:shufle).permit(:shufle_name)
    end
end
