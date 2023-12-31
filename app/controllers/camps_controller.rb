class CampsController < ApplicationController
  before_action :set_camp, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :confirmation]
  invisible_captcha only: [:create], honeypot: :confirm_email

  # GET /camps or /camps.json
  def index
    @camps = Camp.all
  end

  # GET /camps/1 or /camps/1.json
  def show
  end

  # GET /camps/new
  def new
    @camp = Camp.new
  end

  # GET /camps/1/edit
  def edit
  end

  # POST /camps or /camps.json
  def create
    @camp = Camp.new(camp_params)

    respond_to do |format|
      if @camp.save
        CampMailer.camp_email(@camp).deliver_later
        format.html { redirect_to camp_confirmation_path, notice: @camp.attendee_first_name, alert: @camp.parent_first_name  }
        format.json { render :show, status: :created, location: @camp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @camp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camps/1 or /camps/1.json
  #def update
  #  respond_to do |format|
  #    if @camp.update(camp_params)
  #      format.html { redirect_to camp_url(@camp), notice: "Camp was successfully updated." }
  #      format.json { render :show, status: :ok, location: @camp }
  #    else
  #      format.html { render :edit, status: :unprocessable_entity }
  #      format.json { render json: @camp.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /camps/1 or /camps/1.json
  def destroy
    @camp.destroy

    respond_to do |format|
      format.html { redirect_to camps_url, notice: "Camp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp
      @camp = Camp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def camp_params
      params.require(:camp).permit(:attendee_first_name, :attendee_last_name, :attendee_age, :phone, :email, :parent_first_name, :parent_last_name, :camp_date, :comments)
    end
end
