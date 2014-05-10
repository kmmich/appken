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

  private
    def campaign_params
      params.require(:campaign).permit(:name, :position, elements_attributes: [ :name])
    end
end
