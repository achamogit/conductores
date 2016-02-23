class PerfilesController < ApplicationController
  before_action :set_perfile, only: [:show, :edit, :update, :destroy]

  # GET /perfiles
  # GET /perfiles.json
  def index
    @perfiles = Perfile.all
  end

  # GET /perfiles/1
  # GET /perfiles/1.json
  def show
  end

  # GET /perfiles/new
  def new
    @perfile = Perfile.new
  end

  # GET /perfiles/1/edit
  def edit
  end

  # POST /perfiles
  # POST /perfiles.json
  def create
    @perfile = Perfile.new(perfile_params)

    respond_to do |format|
      if @perfile.save
        format.html { redirect_to @perfile, notice: 'Perfile was successfully created.' }
        format.json { render :show, status: :created, location: @perfile }
      else
        format.html { render :new }
        format.json { render json: @perfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfiles/1
  # PATCH/PUT /perfiles/1.json
  def update
    respond_to do |format|
      if @perfile.update(perfile_params)
        format.html { redirect_to @perfile, notice: 'Perfile was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfile }
      else
        format.html { render :edit }
        format.json { render json: @perfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfiles/1
  # DELETE /perfiles/1.json
  def destroy
    @perfile.destroy
    respond_to do |format|
      format.html { redirect_to perfiles_url, notice: 'Perfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfile
      @perfile = Perfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfile_params
      params.require(:perfile).permit(:name, :nivel)
    end
end
