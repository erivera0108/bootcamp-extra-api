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
        comments = Comment.create(comments_params)

        render json: comments
    end

    def update
        comments = Comment.find(params[:id])

        comments.update(comments_params)

        render json: comments
    end

    private

    def comments_params
        params.require(:comments).permit(:text, :user_id, :post_id, :created_at, :updated_at)
    end
end
