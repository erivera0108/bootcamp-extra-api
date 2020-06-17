class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all 

        render json: comments
    end
    def show
        comment = Comment.find(params[:id])

        render json: comment
    end

    def create
        comment = Comment.create(comments_params)

        render json: comment
    end

    def update
        comment = Comment.find(params[:id])

        comment.update(comments_params)

        render json: comment
    end

    private

    def comments_params
        params.require(:comment).permit(:text, :user_id, :post_id, :created_at, :updated_at)
    end
end
