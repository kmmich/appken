class CandidatesController < ApplicationController  

  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = Candidate.all
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
    @candidate = Candidate.find(params[:id])
    @candidate_campaign = @candidate.candidate_campaigns.build
    @campaign_options = Campaign.all.map{|e| [e.name, e.id]}
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    @employer_record = @candidate.employer_records.new
    @employer_options = Employer.all.map{|e| [e.name, e.id]}
    @school_record = @candidate.school_records.new
    @school_options = School.all.map{|e| [e.name, e.id]}

    current_year = Time.new.year
    @start_year_options = [[current_year,current_year],[current_year-1,current_year-1]]
    @end_year_options = [[current_year,current_year],[current_year+1,current_year+1],[current_year+2,current_year+2]]
  
  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])
    

    @employer_record = @candidate.employer_records.first
    if @employer_record.nil?
      @employer_record = @candidate.employer_records.new
    end

    @school_record = @candidate.school_records.first
    if @school_record.nil?
      @school_record = @candidate.school_records.new
    end

    @employer_options = Employer.all.map{|e| [e.name, e.id]}
    @school_options = School.all.map{|e| [e.name, e.id]}

    current_year = Time.new.year
    @start_year_options = [[current_year,current_year],[current_year-1,current_year-1]]
    @end_year_options = [[current_year,current_year],[current_year+1,current_year+1],[current_year+2,current_year+2]]

  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)
    @employer_record = @candidate.employer_records.new(employer_record_params)
    @candidate.save
    @employer_record.save
    redirect_to @candidate
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :preferred_name, :email_address, :phone_number)
    end

    def employer_record_params
      params.require(:employer_record).permit(:employer_id, :title, :start_date)
    end
end
