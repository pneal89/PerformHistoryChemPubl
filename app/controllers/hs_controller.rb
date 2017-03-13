class HsController < ApplicationController
  before_action :set_h, only: [:show, :edit, :update, :destroy]

  # GET /hs
  # GET /hs.json
  def index
    @hs = H.all
  end

  # GET /hs/1
  # GET /hs/1.json
  def show
  end

  # GET /hs/new
  def new
    @h = H.new
  end

  # GET /hs/1/edit
  def edit
  end

  # POST /hs
  # POST /hs.json
  def create
    @h = H.new(h_params)

    respond_to do |format|
      if @h.save
        format.html { redirect_to @h, notice: 'H was successfully created.' }
        format.json { render :show, status: :created, location: @h }
      else
        format.html { render :new }
        format.json { render json: @h.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hs/1
  # PATCH/PUT /hs/1.json
  def update
    respond_to do |format|
      if @h.update(h_params)
        format.html { redirect_to @h, notice: 'H was successfully updated.' }
        format.json { render :show, status: :ok, location: @h }
      else
        format.html { render :edit }
        format.json { render json: @h.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hs/1
  # DELETE /hs/1.json
  def destroy
    @h.destroy
    respond_to do |format|
      format.html { redirect_to hs_url, notice: 'H was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_h
      @h = H.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def h_params
      params.require(:h).permit(:city, :country, :name, :school_id, :state)
    end
end
