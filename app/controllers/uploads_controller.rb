class UploadsController < ApplicationController
  def new
  end

  def create
    file = params[:file].original_filename
    obj = S3_Resource.bucket(ENV['S3_BUCKET']).object(file)
      
    if obj.put(body: params[:file].to_io)
      flash.now[:notice] = 'File successfully uploaded'
      redirect_to uploads_path, success: 'File successfully uploaded'
    else
      flash.now[:notice] = 'There was an error'
      render :new
    end
  end
end
