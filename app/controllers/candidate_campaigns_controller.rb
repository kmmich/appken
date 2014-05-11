class CandidateCampaignsController < ApplicationController

	def create
		@candidate = Candidate.find(candidate_params[:passed_candidate_id])
		@cc = @candidate.candidate_campaigns.new(cc_params)
		@cc.save

		@campaign = Campaign.find(cc_params[:campaign_id])

		@campaign.elements.each do |e|
			ce = @candidate.candidate_elements.new
			ce.element_id = e.id
			ce.save
			ce = nil
		end 

		redirect_to @candidate
	end

	def destroy
		
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cc_params
      params.require(:candidate_campaign).permit(:id, :campaign_id, :candidate_id)
    end

    def candidate_params
   		params.require(:candidate_campaign).permit(:passed_candidate_id)
    end
end
