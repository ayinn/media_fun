class MediaController < ApplicationController
  before_action :set_medium, only: [:show, :edit, :update, :destroy]

  # GET /media
  # GET /media.json
  def index
    @media = Medium.all
  end

  # GET /media/1
  # GET /media/1.json
  def show
    @medium = Medium.find(params[:id])
  end

  # GET /media/new
  def new
    @medium = Medium.new
    @markets = Market.all
  end

  #added params here as well as it is at bottom
  def medium_params
    params.require(:medium).permit(:title, :description, :media_type, :market_id, :market_name, :media_target, :media_reach, :media_url)
    end
  # GET /media/1/edit
  def edit
    @medium = Medium.find(params[:id])
    @markets = Market.all
  end

  # POST /media
  # POST /media.json
  def create
    @medium = Medium.new(medium_params)

    respond_to do |format|
      if @medium.save
        format.html { redirect_to @medium, notice: 'Medium was successfully created.' }
        format.json { render :show, status: :created, location: @medium }
      else
        @markets = Market.all
        format.html { render :new }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
    def medium_param
      params.require(:media).permit(:title, :description, :media_type, :market_id, :market_name, :media_target, :media_reach, :media_url)
    end
  end

  # PATCH/PUT /media/1
  # PATCH/PUT /media/1.json
  def update
    @medium = Medium.find(param[:id])
    respond_to do |format|
      if @medium.update_attributes(medium_params)
        format.html { redirect_to @medium, notice: 'Medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @medium }
      else
        @markets = Market.all
        format.html { render :edit }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @medium.destroy
    respond_to do |format|
      format.html { redirect_to media_url, notice: 'Medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
      @market = Market.all
    end
  def show_markets
    @market = Market.find(params[:id, :name])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_params
      params.require(:medium).permit(:title, :description, :media_type, :market_id, :market_name, :media_target, :media_reach, :media_url)
    end
end
