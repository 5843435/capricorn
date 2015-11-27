class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy, :increase_day, :charge_max]
  #before_action :authenticate_user!

  # 登録画面を選択ボックス方式にするためモデルからデータを取り出す記述
  before_filter :_get_item
  def _get_item
    @items = Item.all
  end

  # GET /stocks
  # GET /stocks.json
  def index
  # ログインしていなくても利用可能なように実装
  if user_signed_in? then
    @user = User.where(:id => current_user.id)
    @stocks = Stock.where(:user_id => current_user.id).order("id desc")
  else
    @project = Project.find_by(:key => params[:project_key])
    @stocks = Stock.where(:project_id => @project.id).order("id desc")
  end
    @week1 = {}
    @week2 = {}
    @week3 = {}
    @week4 = {}
    @week5 = {}
    @stocks.each do |stock|

  # ログインしていないとcalcEnddayが使えないので下記記述
  if user_signed_in? then
    end_day =  calcEndday(stock) 
  else
    end_day = stock.created_at + stock.increase_day.days + ((stock.num * stock.unit) / ( stock.item.spent_men + stock.item.spent_women )).to_i.days
  end

    if end_day <= Time.now
    elsif end_day < (Time.now + 1.week)
      @week1.store(stock.item.id, stock.item.name)
    elsif ((Time.now + 1.week) <= end_day) && (end_day < (Time.now + 2.week))
      @week2.store(stock.item.id, stock.item.name)
    elsif ((Time.now + 2.week) <= end_day) && (end_day < (Time.now + 3.week))
      @week3.store(stock.item.id, stock.item.name)
    elsif ((Time.now + 3.week) <= end_day) && (end_day < (Time.now + 4.week))
      @week4.store(stock.item.id, stock.item.name)
    else
      @week5.store(stock.item.id, stock.item.name)
    end
    end
  end

  def search
    @tempstock = Stock.with_deleted.where(:user_id => current_user.id)
    @search = @tempstock.search(params[:q])
    @stocks = @search.result(distinct: true)
  end

  # GET /stocks/1
  # GET /stocks/1.json
  def show
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
   if user_signed_in? then
   else
    @project = Project.find_by(:key => params[:project_key])
   end
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  # POST /stocks.json
  def create

  # ログインしているときの動き
 if user_signed_in? then
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
  # 非ログイン時の動き
  else
    @project = Project.find_by(:key => params[:project_key])
    @stock = @project.stocks.build(stock_params)
    @stock.user_id = params[:project_key]
    respond_to do |format|
      if @stock.save
        format.html { redirect_to project_stocks_url, notice: '在庫を登録しました' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  end

  # PATCH/PUT /stocks/1
  # PATCH/PUT /stocks/1.json
  def update
    #respond_to do |format|
    #  if @stock.update(stock_params)
    #    format.html { redirect_to @stock, notice: '在庫を更新しました' }
    #    format.json { render :show, status: :ok, location: @stock }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @stock.errors, status: :unprocessable_entity }
    #  end
    #end
    @stock.increment!(:increase_day, 1)
      respond_to do |format|
        format.html { redirect_to stocks_url}
        format.json { head :no_content }
      end
  end

  # DELETE /stocks/1
  # DELETE /stocks/1.json
  def destroy
   if user_signed_in? then
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url}
      format.json { head :no_content }
    end
   else
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to project_stocks_url}
      format.json { head :no_content }
    end
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

  # マックスチャージ
  def cherge_max
    dup_stock =@stock.dup
    #
    #
    dup_stock.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_params
      params.require(:stock).permit(:user_id, :item_id, :unit, :num, :photo, :remarks)
    end
end
