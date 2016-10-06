class ClientReviewsController < ApplicationController

 def destroy
 	@review = ClientReview.find(params[:id])
    @review.destroy
    redirect_to :back
  end

end
