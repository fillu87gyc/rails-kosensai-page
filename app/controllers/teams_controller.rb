class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /teams
  # GET /teams.json
  def index
    unless current_user.admin_flg
      flash[:notice] = "権限がありません"
      redirect_to '/'
    end
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    
  end

  # GET /teams/new
  def new
    @team = Team.new
    @team.kenbens.build
    @team.user_id = current_user.id
  end

  # GET /teams/1/edit
  def edit

  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params[:id])
    unless params[:id] == current_user.team.id.to_s or current_user.admin_flg
      flash[:notice] = "権限がありません"
      redirect_to '/'
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def team_params
    params.require(:team).permit(
      :user_id, :team_name, :contents_of_store, :advisor, :number_of_people, :is_commercial_purpose, :is_food_provision, :is_outdoor,
      kenbens_attributes: [:id, :name, :class_name, :phonetic, :sex,:age, :_destroy]
    )
  end
end
