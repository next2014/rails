class CommentsController < ApplicationController
    
    http_basic_authenticate_with name: "root", password: "root", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to article_path(@article)
    end

    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end

     def create
        c = Comment.new
        c.username = params[:username]
        c.email = params[:email]
        c.content = params[:content]
        c.issue_id = params[:issue_id]
        c.save
        issue = Issue.find(params[:issue_id])
        redirect_to issue
      end
end
