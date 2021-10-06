class MessagesController < ApplicationController

    before_action :authenticate_user!

    def create
      post = Post.find(params[:post_id])
      message = post.messages.build(message_params) #buildを使い、contentとtweet_idの二つを同時に代入
      message.user_id = current_user.id
      if message.save
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path)
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path)
      end
    end
  
    private
  
      def message_params
        params.require(:message).permit(:content)
      end
    end
