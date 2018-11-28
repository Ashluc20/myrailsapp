class OrdersController < ApplicationController
  def index
    @order = Order.all
  end

  def show
    @order = Order.all
  end

  def new
    @order = Order.new
  end

  def create
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
  end
end
