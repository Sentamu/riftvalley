class ClientzsController < ApplicationController
  before_action :set_clientz, only: [:show, :edit, :update, :destroy]

  # GET /clientzs
  # GET /clientzs.json
  def index
    @clientzs = Clientz.all
  end

  # GET /clientzs/1
  # GET /clientzs/1.json
  def show
  end

  # GET /clientzs/new
  def new
    @clientz = Clientz.new
  end

  # GET /clientzs/1/edit
  def edit
  end

  # POST /clientzs
  # POST /clientzs.json
  def create
    @clientz = Clientz.new(clientz_params)

    respond_to do |format|
      if @clientz.save
        format.html { redirect_to @clientz, notice: 'Clientz was successfully created.' }
        format.json { render :show, status: :created, location: @clientz }
      else
        format.html { render :new }
        format.json { render json: @clientz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientzs/1
  # PATCH/PUT /clientzs/1.json
  def update
    respond_to do |format|
      if @clientz.update(clientz_params)
        format.html { redirect_to @clientz, notice: 'Clientz was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientz }
      else
        format.html { render :edit }
        format.json { render json: @clientz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientzs/1
  # DELETE /clientzs/1.json
  def destroy
    @clientz.destroy
    respond_to do |format|
      format.html { redirect_to clientzs_url, notice: 'Clientz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientz
      @clientz = Clientz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientz_params
      params.require(:clientz).permit(:name, :email, :tel, :start, :end, :rooms, :adults, :message)
    end
end
