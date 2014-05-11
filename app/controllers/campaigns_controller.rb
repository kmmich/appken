class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
  	@campaign = Campaign.new
  	@elements = @campaign.elements.build
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.save
  end

  def show
    @campaign = Campaign.find(params[:id])
    @can = Candidate.find(1)
  end

  def show_candidate_modal
    @can = Candidate.find(params[:id])

    respond_to do |format|
      format.js { render :candidate_modal }
      format.html
    end
  end

  private
    def campaign_params
      params.require(:campaign).permit(:name, :position, elements_attributes: [ :name])
    end
end
