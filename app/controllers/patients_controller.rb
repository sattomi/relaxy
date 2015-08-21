class PatientsController < UsersController
  before_action :set_patient, only: [:edit, :update, :register]
  before_action :authenticate_user!, only: [:edit, :update, :register]
  before_action :correct_user, only: [:edit, :update, :register]

  # GET /patients/1/edit
  def edit
  end

  def register
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params[:patient]
    end
end
