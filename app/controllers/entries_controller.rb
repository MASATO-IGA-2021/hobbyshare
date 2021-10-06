class EntriesController < ApplicationController
    def create 
        @entry=Entry.create(room_id:params[:id], user_id:params[:user_id])
        redirect_back(fallback_location: root_path)
      end
  
      def destroy
        @entry = Entry.find_by(room_id: params[:room_id], user_id: params[:user_id])
        logger.debug(@entry.inspect)
        @userroom = UserRoom.create(room_id: @entry.room_id, user_id: @entry.user_id)
        @entry.destroy
        redirect_back(fallback_location: root_path)
      end
end
