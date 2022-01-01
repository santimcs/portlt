class EpssController < ApplicationController
  before_action :set_eps, only: [:show, :edit, :update, :destroy]

  # GET /epss
  # GET /epss.json
  def index
    @epss = Eps.all
  end

  def list_epss
      # @epss = Eps.where("publish_date >= '2018-01-01'").order(publish_date: :desc)
      @epss = Eps.where('publish_date >= "2018-10-01"').order(publish_date: :desc)
  #    @epss = Eps.where('publish_date >= "2018-06-30"').order(publish_date: :desc)
  end

  # GET /epss/1
  # GET /epss/1.json
  def show
  end

  # GET /epss/new
  def new
    @eps = Eps.new
  end

  # GET /epss/1/edit
  def edit
  end

  # POST /epss
  # POST /epss.json
  def create
    @eps = Eps.new(eps_params)

    respond_to do |format|
      if @eps.save
        format.html { redirect_to @eps, notice: 'Eps was successfully created.' }
        format.json { render :show, status: :created, location: @eps }
      else
        format.html { render :new }
        format.json { render json: @eps.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epss/1
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @eps.update(eps_params)
        format.html { redirect_to @eps, notice: 'Eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @eps }
      else
        format.html { render :edit }
        format.json { render json: @eps.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @eps.destroy
    respond_to do |format|
      format.html { redirect_to epss_url, notice: 'Eps was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eps
      @eps = Eps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eps_params
      params.require(:eps).permit(:name, :year, :quarter, :q_amt, :y_amt, :aq_amt, :ay_amt, :q_eps, :y_eps, :aq_eps, :ay_eps, :ticker_id, :publish_date)
    end
end
