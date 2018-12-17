class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render :index
  end

  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

  def new
    @coupon = Coupon.new
    render :new
  end

  def create
  @coupon  = Coupon.create(create_coupon)
  #the path needs an argument to tell it what
  #instance to view.
  #this is staying to redirect to the instance that was just created.
  redirect_to coupon_path(@coupon)
  end

  private

  def create_coupon
    params.require(:coupon).permit(:coupon_code,:store)
  end



end #end of CouponsController class
