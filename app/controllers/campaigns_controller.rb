class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
  	@campaign = Campaign.new
  	@elements = @campaign.elements.new
  end

  def create
  	@campaign = Campaign.new(campaign_params)
  	@element = @campaign.elements.new(element_params)
  	@campaign.save
  	@element.save
  end

  private
    def campaign_params
      params.require(:campaign).permit(:name, :target_end_date, :position)
    end

    def element_params
      params.require(:element).permit(:name)
    end
end
