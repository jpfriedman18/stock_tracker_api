#change to ProtectedController
class StockPurchasesController < ProtectedController
  before_action :set_stock_purchase, only: [:show, :destroy]

  # POST /stock_purchases
  def create
    @stock_purchase = current_user.stock_purchases.new(stock_purchase_params)

    if @stock_purchase.save
      render json: @stock_purchase, status: :created, location: @stock_purchase
    else
      render json: @stock_purchase.errors, status: :unprocessable_entity
    end
  end

  #GET /stock_purchases *working
  def index
    @stock_purchases = current_user.stock_purchases

    render json: @stock_purchases
  end

   # GET /stock_purchases/:id
  def show
    render json: @stock_purchase
  end

  # PATCH /stock_purchases/:id
  def update
    if @stock_purchase.update(stock_purchase_params)
      render json: @stock_purchase, status: :ok
    else
      render json: @stock_purchase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stock_purchases/:id
  def destroy
    @stock_purchase.destroy
    head :no_content
  end

  private
    def set_stock_purchase
      @stock_purchase = current_user.stock_purchases.find(params[:id])
    end

    def stock_purchase_params
      params.require(:stock_purchases).permit(:ticker, :purchase_price, :shares_purchased, :user_id)
    end
end
