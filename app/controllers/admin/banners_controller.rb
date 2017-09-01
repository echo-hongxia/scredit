class Admin::BannersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update,:index]

  layout "admin"

  def index
    if params[:category].blank?
      # @pic_category_id = PicCategory.find_by(name: "首页轮播图").id
      # @pic_category_id = 3
      @banners = Banner.all
    else
      @pic_category_id = PicCategory.find_by(name: params[:category]).id
        @banners = Banner.where(:category_id => @pic_category_id)
    end


  end

  def new
    @banner = Banner.new
    @pic_categories = PicCategory.all.map { |c| [c.name, c.id] }
  end

  def create
      @banner = Banner.new(banner_params)
      @banner.category_id = params[:pic_category_id]
      if @banner.save
        redirect_to admin_banners_path
      else
        render :new
      end

  end

  def edit
    @banner = Banner.find(params[:id])
    @pic_categories = PicCategory.all.map { |c| [c.name, c.id] }
  end

  def update
    @banner = Banner.find(params[:id])
    @banner.category_id = params[:pic_category_id]
    if @banner.update(banner_params)
      redirect_to admin_banners_path
    else
      render :edit
    end
  end

  private

  def banner_params
    params.require(:banner).permit(:title,:pic,:img_link,:img_url,:category_id,:description,:position)
  end

end
