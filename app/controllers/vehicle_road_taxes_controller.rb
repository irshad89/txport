class VehicleRoadTaxesController < ApplicationController
  before_action :set_vehicle_road_tax, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_road_taxes
  # GET /vehicle_road_taxes.json
  def index
    @vehicle_road_taxes = VehicleRoadTax.all
  end

  # GET /vehicle_road_taxes/1
  # GET /vehicle_road_taxes/1.json
  def show
  end

  # GET /vehicle_road_taxes/new
  def new
    @vehicle_road_tax = VehicleRoadTax.new
  end

  # GET /vehicle_road_taxes/1/edit
  def edit
  end

  # POST /vehicle_road_taxes
  # POST /vehicle_road_taxes.json
  def create
    @vehicle_road_tax = VehicleRoadTax.new(vehicle_road_tax_params)

    respond_to do |format|
      if @vehicle_road_tax.save
        format.html { redirect_to @vehicle_road_tax, notice: 'Vehicle road tax was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vehicle_road_tax }
      else
        format.html { render action: 'new' }
        format.json { render json: @vehicle_road_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_road_taxes/1
  # PATCH/PUT /vehicle_road_taxes/1.json
  def update
    respond_to do |format|
      if @vehicle_road_tax.update(vehicle_road_tax_params)
        format.html { redirect_to @vehicle_road_tax, notice: 'Vehicle road tax was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vehicle_road_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_road_taxes/1
  # DELETE /vehicle_road_taxes/1.json
  def destroy
    @vehicle_road_tax.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_road_taxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_road_tax
      @vehicle_road_tax = VehicleRoadTax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_road_tax_params
      params.require(:vehicle_road_tax).permit(:vehicle_id, :start_on, :end_on, :amount)
    end
end