class PostCommentsController < ApplicationController
    
    def create
        post_image = PostImage.find(params[:post_image_id])
        comment = current_user.post_comments.new(post_comment_params)
        comment.save
        redirect_to post_image_path(post_image)
    end
    
    private
    
    def post_comment_params
        params.require(:post_coments).permit(:comment)
    end
    
end
