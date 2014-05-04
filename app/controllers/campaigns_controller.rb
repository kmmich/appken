class CampaignsController < ApplicationController
  def new
  	@campaign = Campaign.new
  end

  def create
  end

  private
    def campaigns_params
      params.require(:campaign).permit(:name, :target_end_date, :position)
    end
end
