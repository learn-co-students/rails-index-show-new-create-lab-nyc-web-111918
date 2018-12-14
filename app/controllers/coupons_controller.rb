class CouponsController < ApplicationController
  # before_action :find_coupon, only: [:show, :create]
  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
    render :'/coupons/_form'
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end
end
