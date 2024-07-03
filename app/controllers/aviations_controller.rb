class AviationsController < ApplicationController
  before_action :set_aviation, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :confirmation]
  invisible_captcha only: [:create], honeypot: :confirm_email

  # GET /aviations or /aviations.json
  def index
    @aviations = Aviation.all
  end

  # GET /aviations/1 or /aviations/1.json
  def show
  end

  # GET /aviations/new
  def new
    @aviation = Aviation.new
  end

  # GET /aviations/1/edit
  def edit
  end

  # POST /aviations or /aviations.json
  def create
    @aviation = Aviation.new(aviation_params)

    respond_to do |format|
      if @aviation.save
        AviationMailer.aviation_email(@aviation).deliver_later
        format.html { redirect_to aviation_confirmation_path, notice: @aviation.attendee_first_name, alert: @aviation.parent_first_name  }
        format.json { render :show, status: :created, location: @aviation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aviations/1 or /aviations/1.json
  def update
    respond_to do |format|
      if @aviation.update(aviation_params)
        format.html { redirect_to aviation_url(@aviation), notice: "Aviation was successfully updated." }
        format.json { render :show, status: :ok, location: @aviation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aviations/1 or /aviations/1.json
  def destroy
    @aviation.destroy

    respond_to do |format|
      format.html { redirect_to aviations_url, notice: "Aviation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aviation
      @aviation = Aviation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aviation_params
      params.require(:aviation).permit(:attendee_first_name, :attendee_last_name, :attendee_age, :phone, :email, :parent_first_name, :parent_last_name, :comments)
    end
end
