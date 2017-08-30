class EliteteamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  layout "account", only: [:new]


  # ---CRUD---

  def index
    @eliteteams = Eliteteam.order("created_at DESC")
  end

  def show
    @eliteteam = Eliteteam.find(params[:id])
  end

  # ---private---

  private

  def eliteteam_params
    params.require(:eliteteam).permit(:description,:title,:image)
  end
end
