module Api
  module V1
    class PhotosController < ApplicationController
      def random
        @photos = Photo.all.shuffle.sample
        json_response(@photos)
      end
      
      def index
        @photos = Photo.all
        json_response(@photos)
      end

      def show
        @photo = Photo.find(params[:id])
        json_response(@photo)
      end

      def create
        @photo = Photo.create!(photo_params)
        json_response(@photo, :created)
      end

      def update
        @photo = Photo.find(params[:id])
        if @photo.update!(photo_params)
          render status: 200, json: {
          message: "This photo has been updated successfully."
          }
        end
      end

      def destroy
        @photo = Photo.find(params[:id])
        if @photo.destroy
          render status: 200, json: {
          message: "This photo has been deleted successfully."
          }
        end
      end


      def photo_params
        params.permit(:file_path)
      end
    end
  end
end