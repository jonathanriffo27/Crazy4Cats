class ReactionsController < ApplicationController
  before_action :authenticate_user!
  def new_user_reaction
    @user = current_user
    @type = params[:reaction_type]
    @post = Post.find(params[:post_id]) if params[:post_id]
    @comment = Comment.find(params[:comment_id]) if params[:comment_id]
    @kind = params[:kind]
    respond_to do |format|
      if @type == 'comment'
        reaction_comment = Reaction.find_by(user_id: @user,
                                            comment_id: @comment.id)
      else
        reaction_post = Reaction.find_by(user_id: @user.id,
                                         post_id: @post.id)
      end
      if reaction_post || reaction_comment
        format.html do
          redirect_to post_path(@post), notice: 'You already reacted
                to this post'
        end
      else
        @reaction = if @type == 'post'
                      Reaction.new(user_id: @user.id, post_id:
                                      @post.id, reaction_type: @type, kind: @kind)
                    else
                      Reaction.new(user_id:
                                      @user.id, comment_id: @comment.id, reaction_type: @type, kind: @kind)
                    end
        if @reaction.save!
          format.html do
            redirect_to post_path(@post), notice: 'Reaction was
                successfully created.'
          end
        else
          format.html do
            redirect_to post_path(@post), notice: 'Something went
                wrong'
          end
        end
      end
    end
  end
end
