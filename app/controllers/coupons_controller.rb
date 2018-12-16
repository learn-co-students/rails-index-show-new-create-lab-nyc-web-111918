class CouponsController < ApplicationController

  def index
    all_coupons
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    @coupon = Coupon.create(coupon_params)

    redirect_to coupon_path(@coupon)
  end

  private

  def all_coupons
    @coupons = Coupon.all
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
