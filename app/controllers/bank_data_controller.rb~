class BankDataController < ApplicationController
  before_action :set_bank_datum, only: [:show, :edit, :update, :destroy]

  # GET /bank_data
  # GET /bank_data.json
  def index
    @bank_data = BankDatum.all
  end

  # GET /bank_data/1
  # GET /bank_data/1.json
  def show
  end

  # GET /bank_data/new
  def new
    @bank_datum = BankDatum.new
  end

  # GET /bank_data/1/edit
  def edit
  end

  # POST /bank_data
  # POST /bank_data.json
  def create
    @bank_datum = BankDatum.new(bank_datum_params)

    respond_to do |format|
      if @bank_datum.save
        format.html { redirect_to @bank_datum, notice: 'Bank datum was successfully created.' }
        format.json { render :show, status: :created, location: @bank_datum }
      else
        format.html { render :new }
        format.json { render json: @bank_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_data/1
  # PATCH/PUT /bank_data/1.json
  def update
    respond_to do |format|
      if @bank_datum.update(bank_datum_params)
        format.html { redirect_to @bank_datum, notice: 'Bank datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_datum }
      else
        format.html { render :edit }
        format.json { render json: @bank_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_data/1
  # DELETE /bank_data/1.json
  def destroy
    @bank_datum.destroy
    respond_to do |format|
      format.html { redirect_to bank_data_url, notice: 'Bank datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_datum
      @bank_datum = BankDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_datum_params
      params.fetch(:bank_datum, {})
    end
end
