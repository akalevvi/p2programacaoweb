class PhotographerReviewsController < ApplicationController

 def destroy
 	@review = PhotographerReview.find(params[:id])
    @review.destroy
    # redirect_to {:back, notice: 'Review apagado' }
    redirect_to :back
  end

end
