class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_url
      # redircet_to :action => :index  //are equal to 13 line code
    else
      render :action => :new    
    end  

  end

  def show
    
  end

  def edit
    
  end

  def update
    
    if @photo.update_attributes(photo_params)
      redirect_to photo_path(@photo)
    else  
      render :action => :edit
    end
  end

  def destroy
    
    @photo.destroy

    redirect_to photos_url
  end

  def deleteall
    @photo = Photo.delete_all

    redirect_to photos_url
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

end
