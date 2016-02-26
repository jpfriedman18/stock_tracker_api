class StockPurchasesController < ProtectedController
  before_action :set_stock_purchase, only: [:show, :delete]
  before_action :set_user, only: [:index, :create]

  # POST /stock_purchases
  def create
    @stock_purchase = StockPurchase.new(stock_purchase_params)

    if @stock_purchase.save
      render json: @stock_purchase, status: :created, location: @stock_purchase
    else
      render json: @stock_purchase.errors, status: :unprocessable_entity
    end
  end

  #GET /stock_purchases
  def index
    @stock_purchases = @user.comments

    render json: @stock_purchases
  end

   # GET /stock_purchases/:id
  def show
    render json: @stock_purchase
  end

  # DELETE /stock_purchases/:id
  def delete
    @stock_purchase.destroy
    head :no_content
  end

  private
    def set_stock_purchase
      @stock_purchase = StockPurchase.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def stock_purchase_params
      params.require(:stock_purchase).permit(:ticker, :purchase_price, :shares_purchased, :user_id)
    end
end
