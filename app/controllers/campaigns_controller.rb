class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  # GET /campaigns
  # GET /campaigns.json
  def index
    @competition = Competition.find(params[:competition_id])
    @campaigns = @competition.campaigns

    respond_to do |format|
      format.html { redirect_to competition_path(@competition) }
    end
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    @competition = Competition.find(params[:competition_id])
    @campaign =  @competition.campaigns.find(params[:id])
  end

  # GET /campaigns/new
  def new
    @competition = Competition.find(params[:competition_id])
    @campaign = @competition.campaigns.build
  end

  # GET /campaigns/1/edit
  def edit
    @competition = Competition.find(params[:competition_id])
    @campaign =  @competition.campaigns.find(params[:id])
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @competition = Competition.find(params[:competition_id])
    @campaign = @competition.campaigns.where(user_id: current_user.id).build(campaign_params)


    respond_to do |format|
      if @campaign.save
        format.html { redirect_to competition_campaign_path(@competition, @campaign), notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @campaign }
      else
        format.html { render :new }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    @competition = Competition.find(params[:competition_id])
    @campaign =  Campaign.find(params[:id])
    respond_to do |format|
      if @campaign.update(campaign_params)
        format.html { redirect_to competition_campaign_path(@competition, @campaign), notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign }
      else
        format.html { render :edit }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @competition = Competition.find(params[:competition_id])
    @campaign =  Campaign.find(params[:id])
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to competition_campaigns_path(@competition), notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:title, :competition_id, :campaigntagline, :campaignprint, :campaignsocialmedia, :campaignguerrilla, :campaignmobile, :campaignonlinebanner, :campaignoutofhome, :campaignradio, :campaigncoverphoto, :campaigncommercial, :user_id)
    end
end
