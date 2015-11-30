class UserItemsController < ApplicationController
  before_action :set_user_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /user_items/1
  # GET /user_items/1.json
  def show
  end

  # GET /user_items/new
  def new
    @user_item = UserItem.new
  end

  # GET /user_items/1/edit
  def edit
  end

  # POST /user_items
  # POST /user_items.json
  def create
    @user_item = UserItem.new(user_item_params)
    @user_item.user_id = current_user.id
    respond_to do |format|
      if @user_item.save
        #format.html { redirect_to @user_item, notice: '在庫を登録しました' }
        format.html { redirect_to stocks_url, notice: '在庫を登録しました' }
        format.json { render :show, status: :created, location: @user_item }
      else
        format.html { render :new }
        format.json { render json: @user_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_items/1
  # PATCH/PUT /user_items/1.json
  def update
    respond_to do |format|
      if @user_item.update(user_item_params)
        format.html { redirect_to @user_item, notice: 'User item was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_item }
      else
        format.html { render :edit }
        format.json { render json: @user_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_items/1
  # DELETE /user_items/1.json
  def destroy
    @user_item.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_item
      @user_item = UserItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_item_params
      params.require(:user_item).permit(:user_id, :name, :unit, :num, :spent_men)
    end
end
