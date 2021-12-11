class ManagerRoomsController < ApplicationController
  before_action :set_manager_room, only: %i[ show edit update destroy ]

  # GET /manager_rooms or /manager_rooms.json
  def index
    @manager_rooms = ManagerRoom.all
  end

  # GET /manager_rooms/1 or /manager_rooms/1.json
  def show
  end

  # GET /manager_rooms/new
  def new
    @manager_room = ManagerRoom.new
  end

  # GET /manager_rooms/1/edit
  def edit
  end

  # POST /manager_rooms or /manager_rooms.json
  def create
    @manager_room = ManagerRoom.new(manager_room_params)

    respond_to do |format|
      if @manager_room.save
        format.html { redirect_to @manager_room, notice: "Manager room was successfully created." }
        format.json { render :show, status: :created, location: @manager_room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manager_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manager_rooms/1 or /manager_rooms/1.json
  def update
    respond_to do |format|
      if @manager_room.update(manager_room_params)
        format.html { redirect_to @manager_room, notice: "Manager room was successfully updated." }
        format.json { render :show, status: :ok, location: @manager_room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manager_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manager_rooms/1 or /manager_rooms/1.json
  def destroy
    @manager_room.destroy
    respond_to do |format|
      format.html { redirect_to manager_rooms_url, notice: "Manager room was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager_room
      @manager_room = ManagerRoom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manager_room_params
      params.require(:manager_room).permit(:first_name, :last_name, :email, :phone, :address)
    end
end
