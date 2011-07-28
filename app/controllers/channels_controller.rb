class ChannelsController < ApplicationController
  before_filter :login_required

  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.find(params[:id])
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(params[:channel])
    if @channel.save
      redirect_to @channel, :notice => "Successfully created channel."
    else
      render :action => 'new'
    end
  end

  def edit
    @channel = Channel.find(params[:id])
  end

  def update
    @channel = Channel.find(params[:id])
    if @channel.update_attributes(params[:channel])
      redirect_to @channel, :notice  => "Successfully updated channel."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @channel = Channel.find(params[:id])
    @channel.destroy
    redirect_to channels_url, :notice => "Successfully destroyed channel."
  end
end
