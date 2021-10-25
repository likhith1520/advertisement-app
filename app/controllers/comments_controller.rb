class CommentsController < ApplicationController
    before_action :authenticate_user!, except:[]
    def create
        # first get the particular avertisement to which we are attaching
        @advertisement = Advertisement.find(params[:advertisement_id])
        @comment = @advertisement.comments.create(params[:comment].permit(:name,:body))
        redirect_to advertisement_path(@advertisement)
    end

    def destroy
        @advertisement = Advertisement.find(params[:advertisement_id])
        @comment = @advertisement.comments.find(params[:id])
        @comment.destroy
        redirect_to advertisement_path(@advertisement)
    end
end
