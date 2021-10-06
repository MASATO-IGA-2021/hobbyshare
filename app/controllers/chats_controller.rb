class ChatsController < ApplicationController
    def create
        @chat = Chat.new(chat_params)
        @chat.room_id = params[:room_id]
        @chat.user_id =current_user.id
        logger.debug(@chat.inspect)
        @chat.save
        redirect_back(fallback_location: root_path)

    end
private
def chat_params
  params.require(:chat).permit(:message)
end

end
