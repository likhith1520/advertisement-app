class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: %i[ show edit update destroy ]

  # allow operations on sign in 
  before_action :authenticate_user!, except:[ :index,:show]

  # if correct user then allow edit, destroy and update or else not
  before_action :correct_user, only:[:edit,:destroy,:update]

  # GET /advertisements or /advertisements.json
  def index
    @advertisements = Advertisement.all
  end

  def myads
    @advertisements = Advertisement.all
  end
  
  # GET /advertisements/1 or /advertisements/1.json
  def show
  end

  # GET /advertisements/new
  def new
    @advertisement = current_user.advertisements.build 
  end

  # GET /advertisements/1/edit
  def edit
  end

  # POST /advertisements or /advertisements.json
  def create
    @advertisement = current_user.advertisements.build(advertisement_params)

    respond_to do |format|
      if @advertisement.save
        format.html { redirect_to @advertisement, notice: "Advertisement was successfully created." }
        format.json { render :show, status: :created, location: @advertisement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  def correct_user
      @advertisement = current_user.advertisements.find_by(id: params[:id])
      redirect_to advertisements_path, notice: "Not Authorized user to perform operation" if @advertisement.nil?
  end

  # PATCH/PUT /advertisements/1 or /advertisements/1.json
  def update
    respond_to do |format|
      if @advertisement.update(advertisement_params)
        format.html { redirect_to @advertisement, notice: "Advertisement was successfully updated." }
        format.json { render :show, status: :ok, location: @advertisement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisements/1 or /advertisements/1.json
  def destroy
    @advertisement.destroy
    respond_to do |format|
      format.html { redirect_to advertisements_url, notice: "Advertisement was successfully deleted." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def advertisement_params
      params.require(:advertisement).permit(:title, :desc, :phone, :others, :user_id)
    end
end
