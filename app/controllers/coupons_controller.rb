require 'byebug'
class CouponsController < ApplicationController
  before_action :find_coupon, only: [:show]


  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    #byebug
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

  def find_coupon
    @coupon = Coupon.find(params[:id])

  end

end
