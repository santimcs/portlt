class YrProfitsController < ApplicationController
  before_action :set_yr_profit, only: [:show, :edit, :update, :destroy]

  # GET /yr_profits
  # GET /yr_profits.json
  def index
    @yr_profits = YrProfit.all
  end

  # GET /yr_profits/1
  # GET /yr_profits/1.json
  def show
  end

  # GET /yr_profits/new
  def new
    @yr_profit = YrProfit.new
  end

  # GET /yr_profits/1/edit
  def edit
  end

  # POST /yr_profits
  # POST /yr_profits.json
  def create
    @yr_profit = YrProfit.new(yr_profit_params)

    respond_to do |format|
      if @yr_profit.save
        format.html { redirect_to @yr_profit, notice: 'Yr profit was successfully created.' }
        format.json { render :show, status: :created, location: @yr_profit }
      else
        format.html { render :new }
        format.json { render json: @yr_profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yr_profits/1
  # PATCH/PUT /yr_profits/1.json
  def update
    respond_to do |format|
      if @yr_profit.update(yr_profit_params)
        format.html { redirect_to @yr_profit, notice: 'Yr profit was successfully updated.' }
        format.json { render :show, status: :ok, location: @yr_profit }
      else
        format.html { render :edit }
        format.json { render json: @yr_profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yr_profits/1
  # DELETE /yr_profits/1.json
  def destroy
    @yr_profit.destroy
    respond_to do |format|
      format.html { redirect_to yr_profits_url, notice: 'Yr profit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yr_profit
      @yr_profit = YrProfit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yr_profit_params
      params.require(:yr_profit).permit(:name, :year, :quarter, :latest_amt, :previous_amt, :inc_amt, :inc_pct)
    end
end
