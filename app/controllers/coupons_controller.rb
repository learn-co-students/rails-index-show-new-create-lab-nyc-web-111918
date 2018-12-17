class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render :index
  end

  def new
    @coupon = Coupon.new
    render :new
  end

  def show
    find_coupon
    render :show
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end



private
  def find_coupon
    @coupon = Coupon.all.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
