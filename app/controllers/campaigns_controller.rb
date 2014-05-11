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
    @modal_candidate_campaign = @campaign.candidate_campaigns.first
  end

  def show_candidate_modal
    @modal_candidate_campaign = CandidateCampaign.find(params[:id])

    respond_to do |format|
      format.js { render :candidate_modal }
    end
  end

  private
    def campaign_params
      params.require(:campaign).permit(:name, :position, elements_attributes: [ :name])
    end
end
