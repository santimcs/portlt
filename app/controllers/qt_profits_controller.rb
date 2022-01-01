class QtProfitsController < ApplicationController
  before_action :set_qt_profit, only: [:show, :edit, :update, :destroy]

  # GET /qt_profits
  # GET /qt_profits.json
  def index
    @qt_profits = QtProfit.all
  end

  # GET /qt_profits/1
  # GET /qt_profits/1.json
  def show
  end

  # GET /qt_profits/new
  def new
    @qt_profit = QtProfit.new
  end

  # GET /qt_profits/1/edit
  def edit
  end

  # POST /qt_profits
  # POST /qt_profits.json
  def create
    @qt_profit = QtProfit.new(qt_profit_params)

    respond_to do |format|
      if @qt_profit.save
        format.html { redirect_to @qt_profit, notice: 'Qt profit was successfully created.' }
        format.json { render :show, status: :created, location: @qt_profit }
      else
        format.html { render :new }
        format.json { render json: @qt_profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qt_profits/1
  # PATCH/PUT /qt_profits/1.json
  def update
    respond_to do |format|
      if @qt_profit.update(qt_profit_params)
        format.html { redirect_to @qt_profit, notice: 'Qt profit was successfully updated.' }
        format.json { render :show, status: :ok, location: @qt_profit }
      else
        format.html { render :edit }
        format.json { render json: @qt_profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qt_profits/1
  # DELETE /qt_profits/1.json
  def destroy
    @qt_profit.destroy
    respond_to do |format|
      format.html { redirect_to qt_profits_url, notice: 'Qt profit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qt_profit
      @qt_profit = QtProfit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qt_profit_params
      params.require(:qt_profit).permit(:name, :year, :quarter, :latest_amt, :previous_amt, :inc_amt, :inc_pct)
    end
end
