class Geoid2010sController < ApplicationController
  before_action :set_geoid2010, only: [:show, :edit, :update, :destroy]

  # GET /geoid2010s
  # GET /geoid2010s.json
  def index
    @geoid2010s = Geoid2010.all
  end

  # GET /geoid2010s/1
  # GET /geoid2010s/1.json
  def show
  end

  # GET /geoid2010s/new
  def new
    @geoid2010 = Geoid2010.new
  end

  # GET /geoid2010s/1/edit
  def edit
  end

  # POST /geoid2010s
  # POST /geoid2010s.json
  def create
    @geoid2010 = Geoid2010.new(geoid2010_params)

    respond_to do |format|
      if @geoid2010.save
        format.html { redirect_to @geoid2010, notice: 'Geoid2010 was successfully created.' }
        format.json { render :show, status: :created, location: @geoid2010 }
      else
        format.html { render :new }
        format.json { render json: @geoid2010.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geoid2010s/1
  # PATCH/PUT /geoid2010s/1.json
  def update
    respond_to do |format|
      if @geoid2010.update(geoid2010_params)
        format.html { redirect_to @geoid2010, notice: 'Geoid2010 was successfully updated.' }
        format.json { render :show, status: :ok, location: @geoid2010 }
      else
        format.html { render :edit }
        format.json { render json: @geoid2010.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geoid2010s/1
  # DELETE /geoid2010s/1.json
  def destroy
    @geoid2010.destroy
    respond_to do |format|
      format.html { redirect_to geoid2010s_url, notice: 'Geoid2010 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geoid2010
      @geoid2010 = Geoid2010.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geoid2010_params
      params.require(:geoid2010).permit(:land_area, :water_area, :block_id, :county_id, :funcstat, :geoid_id, :lat, :lon, :mtfcc, :name, :state_id, :tract_id, :uace, :uatype, :ur)
    end
end
