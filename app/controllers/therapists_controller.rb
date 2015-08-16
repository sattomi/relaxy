class TherapistsController < UsersController
  before_action :set_therapist, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:show, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  # GET /therapists
  # GET /therapists.json
  def index
    @therapists = Therapist.all
  end

  # GET /therapists/1
  # GET /therapists/1.json
  def show
  end

  # GET /therapists/1/edit
  def edit
  end

  # PATCH/PUT /therapists/1
  # PATCH/PUT /therapists/1.json
  def update
    respond_to do |format|
      if @therapist.update(therapist_params)
        format.html { redirect_to @therapist, notice: 'Therapist was successfully updated.' }
        format.json { render :show, status: :ok, location: @therapist }
      else
        format.html { render :edit }
        format.json { render json: @therapist.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapist
      @therapist = Therapist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def therapist_params
      params[:therapist]
    end
end
