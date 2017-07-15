class SapatsController < ApplicationController
  before_action :set_sapat, only: [:show, :edit, :update, :destroy]

  # GET /sapats
  # GET /sapats.json
  def index
    @sapats = Sapat.all
  end

  # GET /sapats/1
  # GET /sapats/1.json
  def show
  end

  # GET /sapats/new
  def new
    @sapat = Sapat.new
  end

  # GET /sapats/1/edit
  def edit
  end

  # POST /sapats
  # POST /sapats.json
  def create
    @sapat = Sapat.new(sapat_params)

    respond_to do |format|
      if @sapat.save
        format.html { redirect_to @sapat, notice: 'Sapat was successfully created.' }
        format.json { render :show, status: :created, location: @sapat }
      else
        format.html { render :new }
        format.json { render json: @sapat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sapats/1
  # PATCH/PUT /sapats/1.json
  def update
    respond_to do |format|
      if @sapat.update(sapat_params)
        format.html { redirect_to @sapat, notice: 'Sapat was successfully updated.' }
        format.json { render :show, status: :ok, location: @sapat }
      else
        format.html { render :edit }
        format.json { render json: @sapat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sapats/1
  # DELETE /sapats/1.json
  def destroy
    @sapat.destroy
    respond_to do |format|
      format.html { redirect_to sapats_url, notice: 'Sapat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sapat
      @sapat = Sapat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sapat_params
      params.require(:sapat).permit(:name, :pass, :age=integer)
    end
end
