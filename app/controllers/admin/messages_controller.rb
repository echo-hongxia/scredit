class Admin::MessagesController < ApplicationController
  layout "admin"
  def index
    @messages = Message.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to admin_messages_path
  end
end
