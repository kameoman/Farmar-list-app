class VegetableRecordsController < ApplicationController
  before_action :set_vegetable_record, only: %i[ show edit update destroy ]

  # GET /vegetable_records or /vegetable_records.json
  def index
    @vegetable_records = VegetableRecord.all
  end

  # GET /vegetable_records/1 or /vegetable_records/1.json
  def show
  end

  # GET /vegetable_records/new
  def new
    @vegetable_record = VegetableRecord.new
  end

  # GET /vegetable_records/1/edit
  def edit
  end

  # POST /vegetable_records or /vegetable_records.json
  def create
    @vegetable_record = VegetableRecord.new(vegetable_record_params)

    respond_to do |format|
      if @vegetable_record.save
        format.html { redirect_to @vegetable_record, notice: "Vegetable record was successfully created." }
        format.json { render :show, status: :created, location: @vegetable_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vegetable_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vegetable_records/1 or /vegetable_records/1.json
  def update
    respond_to do |format|
      if @vegetable_record.update(vegetable_record_params)
        format.html { redirect_to @vegetable_record, notice: "Vegetable record was successfully updated." }
        format.json { render :show, status: :ok, location: @vegetable_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vegetable_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vegetable_records/1 or /vegetable_records/1.json
  def destroy
    @vegetable_record.destroy
    respond_to do |format|
      format.html { redirect_to vegetable_records_url, notice: "Vegetable record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable_record
      @vegetable_record = VegetableRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vegetable_record_params
      params.require(:vegetable_record).permit(:name, :varaiety, :body, :image,:date)
    end
end
