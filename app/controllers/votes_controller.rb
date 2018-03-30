class VotesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @story.votes.create
    respond_to do |format|
      format.html { redirect_to @story, notice: 'Vote was counted' }
      #format.js {} #couldn't get this to properly render -- revisit later
    end
  end
end
