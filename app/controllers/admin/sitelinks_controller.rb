class Admin::SitelinksController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :update,:index]

    layout "admin"

    def index
      @sitelinks= Sitelink.all.paginate(:page => params[:page], :per_page => 10)
    end

    def new
      @sitelink = Sitelink.new

    end

    def create
        @sitelink = Sitelink.new(sitelink_params)

        if @sitelink.save
          redirect_to admin_sitelinks_path
        else
          render :new
        end

    end

    def edit
      @sitelink = Sitelink.find(params[:id])
    end

    def update
      @sitelink = Sitelink.find(params[:id])

      if @sitelink.update(sitelink_params)
        redirect_to admin_sitelinks_path
      else
        render :edit
      end
    end

    private

    def sitelink_params
      params.require(:sitelink).permit(:site_link,:site_title)
    end


end
