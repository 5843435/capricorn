class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy, :increase_day]
  before_action :authenticate_user!

  # 登録画面を選択ボックス方式にするためモデルからデータを取り出す記述
  before_filter :_get_item
  def _get_item
    @items = Item.all
  end


  # GET /stocks
  # GET /stocks.json
  def index
    @stocks = Stock.where(:user_id => current_user.id).order("id desc")
    @user = User.where(:id => current_user.id)
  end

  # GET /stocks/1
  # GET /stocks/1.json
  def show
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  # POST /stocks.json
  def create
    @stock = Stock.new(stock_params)
    @stock.user_id = current_user.id
    respond_to do |format|
      if @stock.save
        format.html { redirect_to stocks_url, notice: '在庫を登録しました' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocks/1
  # PATCH/PUT /stocks/1.json
  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to @stock, notice: '在庫を更新しました' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocks/1
  # DELETE /stocks/1.json
  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url, notice: '在庫を削除しました' }
      format.json { head :no_content }
    end
  end
  # ワンクリックで日付を増やす
  def increase_day
    @stock.increase_day
    #@stock.user_id = current_user.id
    #respond_to do |format|
    #  format.html { redirect_to stocks_url, notice: '日付を増やしました' }
    #  format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_params
      params.require(:stock).permit(:user_id, :item_id, :unit, :num)
    end
end
