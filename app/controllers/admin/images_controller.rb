class Admin::ImagesController < ApplicationController
  include CarrierwaveBase64Uploader

  def create
    raise ArgumentError, 'invalid params' if params[:uri_str].blank?
    @image = Image.find_or_create_by(name: base64_conversion(params[:uri_str], params[:name]), status: params[:status])

    render json: {
      url: @image.name.url
    }
  end
end
