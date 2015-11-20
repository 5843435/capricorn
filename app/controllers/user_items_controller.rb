class UserItemsController < ApplicationController
  before_action :set_user_item, only: [:show, :edit, :update, :destroy]

  # GET /user_items
  # GET /user_items.json
  def index
    @user_items = UserItem.all
  end

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

    respond_to do |format|
      if @user_item.save
        format.html { redirect_to @user_item, notice: 'User item was successfully created.' }
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
      format.html { redirect_to user_items_url, notice: 'User item was successfully destroyed.' }
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
      params.require(:stock).permit(:user_id, :item_id, :unit, :num)
    end
end
