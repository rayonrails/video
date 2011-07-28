class ClipsController < ApplicationController
  before_filter :login_required

  def index
    @clips = Clip.all
  end

  def show
    @clip = Clip.find(params[:id])
  end

  def new
    @clip = Clip.new
    @clip.user_id = current_user.id
  end

  def create
    @clip = Clip.new(params[:clip])
    if @clip.save
      redirect_to @clip, :notice => "Successfully created clip."
    else
      render :action => 'new'
    end
  end

  def edit
    @clip = Clip.find(params[:id])
  end

  def update
    @clip = Clip.find(params[:id])
    if @clip.update_attributes(params[:clip])
      redirect_to @clip, :notice  => "Successfully updated clip."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @clip = Clip.find(params[:id])
    @clip.destroy
    redirect_to clips_url, :notice => "Successfully destroyed clip."
  end
end
