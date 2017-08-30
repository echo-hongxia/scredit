class CompanyprofilesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :join, :quit]
  layout "account", only: [:new]


  # ---CRUD---

  def index
    @companyprofiles = Companyprofile.order("created_at DESC")
  end

  def show
    @companyprofile = Companyprofile.find(params[:id])
  end





  # ---private---

  private

  def companyprofile_params
    params.require(:companyprofile).permit( :title, :description,:image)
  end
end
